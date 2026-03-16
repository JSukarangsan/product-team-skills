# JTBD PRD Writer - Usage Guide

## Quick Start

### Step 1: Activate the Skill

Copy the SKILL.md content and paste it into your Claude conversation, or reference it via:

```
I want you to act as the JTBD PRD Writer skill.

I'm working on [brief feature description]. Let's start the discovery process.
```

### Step 2: Answer Discovery Questions

Claude will ask you 4 core questions conversationally:

1. **Problem & Impact**
   - What problem are we solving?
   - Who is most affected?

2. **Users & Context**
   - Who are the primary/secondary users?
   - What's the situational context?

3. **Technical Landscape**
   - Preferred tech stack?
   - Hard constraints?

4. **Success Definition**
   - How will we measure success?
   - What are we NOT doing?

**Example Answers:**

```
Problem: Users save recipes but forget why they saved them.
45% of saved recipes never get cooked.

Primary Users: Home cooks (25-45, cooking 4+ times/week)
Secondary: Recipe collectors who save but rarely cook

Tech Stack: React, Node.js, PostgreSQL (existing NYT Cooking stack)
Constraints: Must work offline (PWA), max 500 char notes

Success: Increase save-to-cook conversion from 12% to 18%
NOT doing: Rich text editing, social sharing, recipe forking
```

### Step 3: Review Generated PRD

Claude will generate a complete 15-section PRD. Review for:
- ✅ JTBD jobs capture user motivations correctly
- ✅ User stories map to jobs
- ✅ Component inventory is complete
- ✅ Data models have all necessary fields
- ✅ Acceptance criteria are binary/testable

### Step 4: Refine as Needed

Ask for specific changes:

```
Can you:
- Add a JTBD job for meal planning use case
- Expand the data model to include tags array
- Add acceptance criteria for offline sync
```

---

## Common Workflows

### Workflow 1: Starting from Scratch

**When to Use:** You have a problem but no solution yet

**Prompt:**
```
I want to improve [specific user workflow/pain point].

Let's start the JTBD discovery process to explore solutions.
```

**What Happens:**
- Claude asks probing questions about user context
- Helps you articulate jobs users are trying to accomplish
- Generates PRD based on discovered jobs

---

### Workflow 2: Refining Existing Idea

**When to Use:** You have a feature idea but need structure

**Prompt:**
```
I want to build [feature name]. Here's what I'm thinking:
- [Brief description]
- [Key capabilities]
- [Target users]

Help me create a JTBD-driven PRD for this.
```

**What Happens:**
- Claude validates idea against JTBD framework
- Suggests situational contexts you may have missed
- Structures your idea into 15-section PRD

---

### Workflow 3: Converting Existing PRD to JTBD Format

**When to Use:** You have a traditional PRD and want to improve it

**Prompt:**
```
I have an existing PRD [paste PRD or share file].

Convert this to JTBD format with:
- Jobs-to-be-Done statements
- User stories mapped to jobs
- AI-ready component specs
```

**What Happens:**
- Claude identifies implicit jobs in your existing PRD
- Reformats into JTBD structure
- Adds missing sections (component inventory, data models, acceptance criteria)

---

## Section-by-Section Guide

### Section 4: Jobs to Be Done (JTBD)

**Purpose:** Ground feature in user motivations, not just actions

**Formula:**
"When [situation], I want to [motivation], so I can [outcome]."

**Good Examples:**
- ✅ "When I find a recipe I want to cook later, I want to save it with my personal notes, so I can remember why I saved it weeks later."
- ✅ "When I'm planning for Thanksgiving, I want to tag recipes with the occasion, so I can easily find all relevant recipes together."

**Bad Examples:**
- ❌ "Users want to save recipes" (no situation or outcome)
- ❌ "I want a save button" (describes solution, not job)
- ❌ "Save recipes for later" (vague outcome)

**Tips:**
- Start with "When" to capture situational context
- "I want to" reveals user motivation
- "So I can" defines the expected outcome
- Aim for 2-5 core jobs (not 20)

---

### Section 5: User Stories

**Purpose:** Translate JTBD jobs into implementable features

**Format:**
| ID | Role | Action | Benefit | JTBD |
|----|------|--------|---------|------|
| US1 | Home Cook | Save recipe with notes | Remember context later | Job 1 |

**Tips:**
- Reference specific JTBD jobs ("Job 1", "Job 2")
- Keep stories atomic (one action per story)
- Include role specificity (not just "User")
- Ensure traceability from job → story → acceptance criteria

---

### Section 7: Component Inventory

**Purpose:** Give AI prototyping tools exact component names

**Good Examples:**
```
- RecipeSaveButton
- RecipeNotesField
- RecipeNotesCard
- SavedRecipesList
- NotesCharacterCount
```

**Bad Examples:**
- ❌ "Save UI" (too vague)
- ❌ "Buttons and inputs" (not specific)
- ❌ Nested structure (AI tools need flat list)

**Tips:**
- Use PascalCase component names
- Be specific (RecipeSaveButton, not SaveButton)
- Flat list, no nesting
- Include micro-components (NotesCharacterCount)

---

### Section 8: Data Models

**Purpose:** Provide type-safe interfaces for code generation

**Good Example:**
```typescript
interface UserRecipeSave {
  id: string;                    // Unique save ID
  userId: string;                // User who saved it
  recipeId: string;              // Recipe reference
  savedAt: Date;                 // Timestamp of save
  notes?: string;                // Personal notes (max 500 chars)
}
```

**Bad Example:**
```typescript
interface Save {
  data: any;  // Missing field descriptions
}
```

**Tips:**
- Use TypeScript interfaces
- Add inline comments for every field
- Specify optional fields with `?`
- Include constraints (max length, valid values)

---

### Section 13: Acceptance Criteria

**Purpose:** Create binary, testable QA checklist

**Good Examples:**
- ✅ "User can save recipe with one tap (no notes required)"
- ✅ "Notes field allows up to 500 characters"
- ✅ "Success confirmation appears within 2 seconds"

**Bad Examples:**
- ❌ "Save flow should be intuitive" (subjective)
- ❌ "Notes work well" (not binary)
- ❌ "Fast performance" (not measurable)

**Tips:**
- Make criteria testable (yes/no answer)
- Include numbers (time, characters, pixels)
- Group by user story (US1 criteria, US2 criteria)
- Use checkbox format `- [ ]` for QA teams

---

## Integration with AI Prototyping Tools

### Using with Cursor

**Workflow:**
1. Generate PRD using JTBD skill
2. Copy Section 7 (Component Inventory) + Section 8 (Data Models)
3. Paste into Cursor with prompt:
   ```
   Build these components using the data models provided.
   Use React + TypeScript.
   ```

**Cursor Benefits:**
- Type-safe code from data models
- Component scaffolding from inventory
- File structure from Section 12

---

### Using with Lovable (formerly GPT Engineer)

**Workflow:**
1. Generate PRD using JTBD skill
2. Copy entire PRD or use "AI Build Summary" from Section 1
3. Paste into Lovable to generate working prototype

**Lovable Benefits:**
- End-to-end app from PRD
- UI generation from component specs
- API scaffolding from Section 9

---

### Using with Figma Make/V0

**Workflow:**
1. Generate PRD using JTBD skill
2. Copy Section 6 (Proposed Experience) + Section 7 (Component Inventory)
3. Use Figma Make to generate design from specs

**Figma Benefits:**
- Visual prototypes from experience description
- Component library alignment
- Interaction model visualization

---

## Tips for Better PRDs

### Tip 1: Start with Jobs, Not Features

❌ Don't start with: "Build a save button with notes"
✅ Start with: "When users save recipes, they forget why"

### Tip 2: Be Specific About Data

❌ Vague: "Store user preferences"
✅ Specific: "Store notes as string (max 500 chars) on user-recipe relationship"

### Tip 3: Omit Inapplicable Sections

If your feature doesn't need API integrations, omit Section 9.
If your tech stack is already decided, keep Section 11 brief.

### Tip 4: Keep Acceptance Criteria Binary

❌ "User experience should be smooth"
✅ "Save completes within 2 seconds"

### Tip 5: Reference Design Systems

```
Component Inventory:
- RecipeSaveButton (use TPL Button component)
- RecipeNotesField (use TPL TextArea component)
```

---

## Troubleshooting

### Issue: Generated PRD is too long

**Solution:** Ask Claude to:
```
Make this PRD more concise:
- Combine similar user stories
- Reduce JTBD jobs to top 3
- Use bullets instead of paragraphs
```

### Issue: Missing technical details

**Solution:** Ask Claude to:
```
Expand Section 8 (Data Models) with:
- All database fields
- Validation rules
- Relationship mappings
```

### Issue: JTBD jobs feel generic

**Solution:** Provide more context:
```
The situational context is:
- Users save recipes weeks before cooking
- They save from mobile but cook from desktop
- Multiple household members share account
```

### Issue: Component inventory doesn't match design system

**Solution:** Reference your design system:
```
Use our design system components:
- Instead of generic Button, reference TPL Button
- Map RecipeCard to existing Card pattern
```

---

## Advanced: Chaining with Other Skills

### Chain 1: Research → JTBD PRD

```
1. Use "Research Synthesis" skill on user interviews
2. Feed synthesis output to JTBD PRD Writer
3. Get PRD grounded in actual user research
```

### Chain 2: JTBD PRD → Design Review

```
1. Generate PRD with JTBD skill
2. Use "Design Review" skill to validate Section 6
3. Refine experience design based on feedback
```

### Chain 3: JTBD PRD → Sprint Planning

```
1. Generate PRD with JTBD skill
2. Use "Sprint Planning" skill to break into tasks
3. Get development timeline from user stories
```

---

## Example Prompts

### Starting a New Feature

```
I want to improve the recipe discovery experience.
Let's create a JTBD-driven PRD.

Context:
- Users browse recipes but struggle to find relevant ones
- Current search is keyword-only
- Target: Increase recipe view-to-save rate
```

### Refining Existing Spec

```
I have a draft PRD for [feature].
Can you:
1. Convert it to JTBD format
2. Add component inventory for Figma Make
3. Create acceptance criteria for each user story
```

### Quick Iteration

```
Update this PRD:
- Add JTBD job for mobile users
- Expand data model to include userTags array
- Add API endpoint for tag management
```
