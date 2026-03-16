# PRD: Enhanced Recipe Save with Personal Notes

## 1. Overview

**Feature Name:** Enhanced Recipe Save with Personal Notes

**Problem Statement:**
Users save recipes but forget why they saved them or what modifications they planned. Current save function is binary (saved/not saved) without context. Support data shows 45% of saved recipes are never cooked, suggesting lack of personal organization reduces utility.

**Proposed Solution:**
Add ability to attach personal notes when saving recipes. Users can record why they saved it, planned modifications, dietary substitutions, or occasion planning notes. Notes appear with saved recipe for future reference.

**AI Build Summary:**
Build a recipe save flow that captures optional user notes at save time and displays them prominently in the saved recipes view. Store notes as text field on user-recipe relationship, editable post-save. Target: increase save-to-cook conversion from 12% to 18%.

---

## 2. Goals & Success Metrics

**Primary Goal:**
Increase save-to-cook conversion rate by helping users remember why they saved recipes and what they intended to do with them.

**Measurable Signals:**
- Save-to-cook conversion: 12% → 18% (baseline to target)
- Note attachment rate: 40%+ of saves include notes
- Recipe re-engagement: 30%+ increase in returning to saved recipes
- Time-to-cook: Reduce average days from save to first cook by 25%

**Anti-Goals:**
- ❌ Don't build full recipe editing or forking
- ❌ Don't build recipe rating/review system (separate feature)
- ❌ Don't require notes (must remain optional)
- ❌ Don't build social sharing of personal notes (privacy concern)

---

## 3. Scope & Constraints

**In Scope:**
- Add notes field to save flow (optional)
- Display notes in saved recipes list
- Allow editing notes on saved recipes
- Persist notes across devices (cloud sync)
- Mobile and desktop parity

**Out of Scope:**
- Sharing notes with other users
- Commenting on recipes
- Recipe modifications/forking
- Rich text formatting in notes
- Image attachments to notes

**Technical Constraints:**
- Must work offline (PWA)
- Maximum note length: 500 characters
- Sub-2-second save response time
- Existing recipe API (can extend user-recipe model)

**Platform Requirements:**
- iOS, Android, Web (responsive)
- Accessibility: WCAG AA compliant
- Works in Safari, Chrome, Firefox

---

## 4. Jobs to Be Done (JTBD)

**Job 1: Capture Context**
When I find a recipe I want to cook later, I want to save it with my personal notes about why I like it and what I'll change, so I can remember my original intent when I return to it weeks later.

**Job 2: Plan Modifications**
When I'm saving a recipe that needs adjustments for my diet or preferences, I want to record those planned substitutions immediately, so I don't have to re-figure them out when I'm ready to cook.

**Job 3: Organize by Occasion**
When I'm planning for a specific event or meal, I want to tag my saved recipes with the occasion, so I can easily find all recipes for "Thanksgiving" or "weeknight dinners" later.

**Job 4: Share Context with Household**
When I save recipes my partner might cook, I want to leave notes about why I saved it or special instructions, so they understand the context without asking me.

---

## 5. User Stories

| ID | Role | Action | Benefit | JTBD |
|----|------|--------|---------|------|
| US1 | Home Cook | Save recipe with notes about why I like it | Remember context months later | Job 1 |
| US2 | Home Cook | Edit notes on previously saved recipe | Update plans or add new ideas | Job 1, Job 2 |
| US3 | Dietary Restrictive User | Record planned substitutions when saving | Don't forget modifications when cooking | Job 2 |
| US4 | Meal Planner | Tag recipes with occasion (e.g., "Thanksgiving") | Find all relevant recipes quickly | Job 3 |
| US5 | Household Cook | Leave notes visible to family members who share account | Share context without verbal communication | Job 4 |
| US6 | Mobile User | Save recipe with notes from mobile device | Capture ideas on-the-go | Job 1 |
| US7 | Returning User | See my notes when viewing saved recipe | Recall why I saved it | Job 1 |

---

## 6. Proposed Experience

**Design Direction:**
Lightweight, non-intrusive notes capture. Default save remains one-tap (no modal). Tapping save shows subtle inline expansion with optional notes field. Notes appear as card detail in saved recipes view.

**Key Screens:**
1. **Recipe Detail (Unsaved)** - Save button (heart icon)
2. **Recipe Detail (Saving)** - Expanded save UI with optional notes field
3. **Recipe Detail (Saved)** - Filled heart with "View notes" affordance
4. **Saved Recipes List** - Recipe cards with note preview (first 60 chars)
5. **Saved Recipe Detail** - Full notes with edit button

**Interaction Model:**
- Tap save → Inline notes field appears (dismissible)
- Type notes (optional) → Auto-save on blur
- Return to saved recipe → Notes visible below recipe title
- Tap edit icon → Edit notes in place

**Accessibility:**
- Notes field has clear label: "Add personal notes (optional)"
- Keyboard navigation: Tab to notes, Enter to save
- Screen reader announces: "Recipe saved. Add notes if desired."
- Sufficient color contrast for note text

---

## 7. Component Inventory

- RecipeSaveButton
- RecipeNotesField
- RecipeNotesCard
- RecipeNotesEditor
- SavedRecipeCard
- SavedRecipesList
- NotesPreview
- NotesExpandButton
- NotesEditButton
- NotesSaveButton
- NotesCharacterCount

---

## 8. Data Models

```typescript
interface UserRecipeSave {
  id: string;                    // Unique save ID
  userId: string;                // User who saved it
  recipeId: string;              // Recipe reference
  savedAt: Date;                 // Timestamp of save
  notes?: string;                // Personal notes (max 500 chars)
  notesUpdatedAt?: Date;         // Last notes edit timestamp
  tags?: string[];               // Future: occasion tags ["Thanksgiving", "weeknight"]
}

interface Recipe {
  id: string;                    // Recipe ID
  title: string;                 // Recipe name
  imageUrl: string;              // Recipe image
  cookTime: number;              // Minutes
  servings: number;              // Number of servings
  // ... existing recipe fields
}

interface SaveWithNotesRequest {
  recipeId: string;              // Recipe to save
  notes?: string;                // Optional notes (max 500 chars)
}

interface UpdateNotesRequest {
  saveId: string;                // UserRecipeSave ID
  notes: string;                 // Updated notes
}
```

---

## 9. API / Integration Surface

**POST /api/v1/recipes/save**
- Auth: Required (user token)
- Request: `{ recipeId: string, notes?: string }`
- Response: `{ saveId: string, savedAt: Date, notes?: string }`
- Errors: 400 (notes >500 chars), 401 (unauthorized), 404 (recipe not found)

**PATCH /api/v1/recipes/saves/:saveId/notes**
- Auth: Required (must own save)
- Request: `{ notes: string }`
- Response: `{ saveId: string, notes: string, notesUpdatedAt: Date }`
- Errors: 400 (notes >500 chars), 401 (unauthorized), 404 (save not found)

**GET /api/v1/recipes/saves**
- Auth: Required
- Response: `{ saves: UserRecipeSave[], recipes: Recipe[] }`
- Query: `?includeNotes=true` (default true)
- Pagination: `?limit=20&offset=0`

**DELETE /api/v1/recipes/save/:saveId**
- Auth: Required (must own save)
- Response: 204 No Content
- Errors: 401 (unauthorized), 404 (save not found)

---

## 10. State Management Map

**Server State (Database):**
- User-recipe saves with notes
- Notes update timestamps
- Recipe metadata

**Client State (React Query):**
- Cached saved recipes list
- Cached individual recipe saves
- Optimistic updates for save/unsave
- Notes editing state

**Component State (React useState):**
- Notes field input value
- Notes editing mode (view/edit)
- Character count display
- Save animation state

**URL State:**
- None (saved recipes list is route-based)

**Local Storage:**
- Offline queue for saves (PWA support)
- Draft notes for offline users

---

## 11. Tech Stack Recommendation

**Frontend:**
- **React 18** - Existing NYT Cooking stack, concurrent features for smooth UX
- **React Query** - Server state caching, optimistic updates, offline support
- **TypeScript** - Type safety for data models

**Backend:**
- **Node.js/Express** - Existing NYT recipe API infrastructure
- **PostgreSQL** - Relational data (user-recipe saves), transaction support

**Database:**
- Add `notes` column to existing `user_recipe_saves` table
- Add `notes_updated_at` timestamp column
- Index on `user_id` + `saved_at` for list queries

**Auth:**
- **NYT Identity** - Existing auth system

**Hosting:**
- **Existing NYT Cooking infrastructure** - Same deployment pipeline

**Rationale:**
Align with existing NYT Cooking stack to minimize integration complexity and leverage proven infrastructure.

---

## 12. Suggested File Structure

```
src/
├── components/
│   ├── RecipeSave/
│   │   ├── RecipeSaveButton.tsx
│   │   ├── RecipeNotesField.tsx
│   │   └── RecipeSaveButton.test.tsx
│   ├── SavedRecipes/
│   │   ├── SavedRecipeCard.tsx
│   │   ├── RecipeNotesCard.tsx
│   │   ├── RecipeNotesEditor.tsx
│   │   └── SavedRecipesList.tsx
├── hooks/
│   ├── useSaveRecipe.ts
│   ├── useUpdateNotes.ts
│   └── useSavedRecipes.ts
├── api/
│   └── recipeSaves.ts
├── types/
│   └── recipeSave.ts
└── utils/
    └── validateNotes.ts
```

---

## 13. Acceptance Criteria

**US1: Save recipe with notes**
- [ ] User can save recipe with one tap (no notes)
- [ ] Save button shows optional notes field inline
- [ ] Notes field allows up to 500 characters
- [ ] Character counter shows remaining characters
- [ ] Notes save automatically on blur
- [ ] Success confirmation appears within 2 seconds
- [ ] Saved recipes appear in "My Recipes" immediately

**US2: Edit notes on saved recipe**
- [ ] User can view existing notes on saved recipe
- [ ] Edit button appears next to notes
- [ ] Clicking edit makes notes editable in place
- [ ] Changes save on blur or explicit save button
- [ ] Last updated timestamp updates correctly
- [ ] Cancel button discards unsaved changes

**US3: Record planned substitutions**
- [ ] Notes field accepts text like "Use almond milk instead of dairy"
- [ ] Notes persist across sessions
- [ ] Notes sync across devices within 5 seconds

**US4: Tag recipes with occasion**
- [ ] User can include tags in free-form notes (future: structured tags)
- [ ] Notes searchable (future enhancement)

**US5: Share context with household**
- [ ] Notes visible to all users on shared account
- [ ] No attribution to specific household member (shared notes)

**US6: Mobile save with notes**
- [ ] Mobile save flow identical to desktop
- [ ] Notes field keyboard-accessible on mobile
- [ ] Character counter visible on mobile
- [ ] Touch targets meet accessibility guidelines (44×44px minimum)

**US7: See notes when viewing saved recipe**
- [ ] Notes appear prominently on saved recipe detail page
- [ ] Notes preview (first 60 chars) shows in saved recipes list
- [ ] "Read more" affordance if notes exceed preview length
- [ ] Notes style differentiates from recipe content

---

## 14. Open Questions & Risks

**Open Questions:**
- Should notes be private or shared with household members on family accounts?
  - **Decision needed:** Product to clarify with user research
- Do we need rich text formatting (bold, bullets)?
  - **Assumption:** Start with plain text, add formatting if user feedback demands
- Should we suggest note templates ("Why I saved this," "Modifications," "Occasion")?
  - **Future enhancement:** V2 if adoption is strong

**Known Risks:**
- **Risk:** Users don't adopt notes feature (low attachment rate)
  - **Mitigation:** Make notes highly visible in UI, test prompts in save flow
  - **Measure:** Track note attachment rate weekly
- **Risk:** 500-char limit frustrates power users
  - **Mitigation:** Start conservative, monitor feedback, increase if needed
  - **Metric:** Track % of notes hitting character limit
- **Risk:** Offline sync conflicts (user edits notes on multiple devices)
  - **Mitigation:** Last-write-wins with timestamp, show conflict warning
  - **Fallback:** Manual merge UI if conflicts frequent

**Dependencies:**
- Recipe API team to extend user-recipe model
- Mobile engineering for iOS/Android parity
- Design system team for notes component specs

---

## 15. Rollout & Next Steps

**MVP Scope (Phase 1):**
- Save with notes (optional)
- View notes on saved recipes
- Edit notes
- Mobile + desktop parity
- Offline support
- Target: Ship in 6 weeks

**Future Enhancements (Phase 2+):**
- Structured tags instead of free-form
- Rich text formatting (bold, bullets, links)
- Search saved recipes by notes content
- Smart suggestions based on notes ("Recipes for Thanksgiving")
- Share curated recipe collections with notes to other users
- Voice-to-text notes capture

**Required Sign-offs:**
- [ ] Product (prioritization, scope)
- [ ] Design (UX specs, component library)
- [ ] Engineering (API extension, timeline)
- [ ] Data/Privacy (notes storage, GDPR compliance)
- [ ] QA (test plan, accessibility audit)

**Owners:**
- PM: [Name]
- Design Lead: [Name]
- Engineering Lead: [Name]
- Launch Date: [6 weeks from kickoff]
