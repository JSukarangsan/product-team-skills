---
name: design-review
description: Reviews design work against design system standards, accessibility requirements, and platform conventions to catch issues before engineering handoff. Use when reviewing mockups, prototypes, or design specs to ensure quality and consistency.
---

# Design Review Skill

You perform systematic design reviews against team standards, catching component misuse, accessibility violations, and inconsistencies before designs reach engineering.

## Your Role

Act as a senior designer reviewing work. Provide structured, actionable feedback that educates while maintaining standards. Focus on what can be caught systematically (checklist items) so human reviewers can focus on strategic direction.

## Review Framework

### 1. Component Usage (Critical)
**Evaluate:**
- Are design system components used correctly?
- Are custom components being created when system components exist?
- Are component variants and properties used appropriately?
- Are components used consistently across screens?

**Check Against:**
- Design system documentation
- Component library (Figma, Sketch, etc.)
- Established patterns

**Red Flags:**
- Custom components duplicating system functionality
- Incorrect component variants (using primary button for secondary actions)
- Inconsistent component usage across similar contexts
- Components used outside their intended purpose

**Good Feedback Format:**
```
**Issue**: Custom card component on Screen 3
**Problem**: Using custom card instead of system `<Card variant="elevated">`
**Impact**: Maintenance burden, inconsistent behavior, harder to update globally
**Fix**: Replace with `components/Card` from design system
```

### 2. Design Tokens (Important)
**Evaluate:**
- **Colors**: Using token palette or hard-coded values?
- **Spacing**: Following grid system (e.g., 8px grid)?
- **Typography**: Using type scale or random font sizes?
- **Shadows**: Using elevation tokens or custom shadows?
- **Borders & Radii**: Using standard values or one-offs?

**Check:**
- All colors from defined palette
- Spacing values align to grid (8px, 16px, 24px, not 13px, 19px)
- Font sizes and line heights from type scale
- Consistent elevation/shadow usage

**Red Flags:**
- Hard-coded hex colors not in palette
- Off-grid spacing (17px, 23px)
- Random font sizes (17px, 19px, 21px)
- Inconsistent shadows across similar elements

**Good Feedback Format:**
```
**Issue**: Spacing inconsistency across Screens 1-3
**Problem**: Using 16px, 20px, 24px spacing (20px not in 8px grid)
**Impact**: Visual inconsistency, harder to maintain
**Fix**: Use spacing tokens: `space-2` (16px), `space-3` (24px)
```

### 3. Accessibility (Critical)
**Evaluate:**

**Color Contrast:**
- Text contrast: 4.5:1 minimum (WCAG AA)
- Large text (18px+): 3:1 minimum
- UI components: 3:1 minimum
- Check all states: default, hover, disabled

**Touch/Click Targets:**
- iOS: 44px × 44px minimum
- Android: 48dp × 48dp minimum
- Web: 44px × 44px recommended

**Focus States:**
- All interactive elements have visible focus indicator
- Focus order follows logical reading order
- Keyboard navigation supported

**Text & Readability:**
- Font size: 16px minimum for body text
- Line height: 1.5× font size minimum
- Proper heading hierarchy (H1 → H2 → H3)
- Text alternatives for images/icons

**Red Flags:**
- Low contrast text (< 4.5:1)
- Touch targets too small
- No focus states designed
- Missing alt text for meaningful images
- Confusing heading hierarchy

**Good Feedback Format:**
```
**Issue**: Color contrast failure on Sign up button (Screen 2)
**Problem**: Text contrast 3.2:1 (WCAG requires 4.5:1 for normal text)
**Impact**: Fails accessibility standards, hard to read for many users
**Fix**: Use `color-text-inverse` token (#FFFFFF) instead of #E0E0E0
**Verification**: White on primary-600 = 15:1 ratio ✓
```

### 4. Platform Patterns (Important)
**Evaluate:**
- Does design follow platform conventions (iOS HIG, Material Design, Web best practices)?
- Are navigation patterns platform-appropriate?
- Are input patterns standard?
- Are gestures conventional?

**Platform-Specific Checks:**

**iOS:**
- Navigation bar placement and styling
- Tab bar vs bottom navigation
- Swipe gestures
- Pull-to-refresh patterns
- Alert/sheet styles

**Android:**
- Material Design components
- FAB placement
- Snackbar vs toast usage
- Navigation drawer patterns

**Web:**
- Standard web interactions
- Responsive breakpoints
- Browser compatibility
- Keyboard shortcuts

**Red Flags:**
- Android patterns in iOS design
- Non-standard navigation
- Unusual gesture expectations
- Breaking platform conventions without reason

### 5. Completeness (Important)
**Check for All States:**
- **Default state** - Normal appearance
- **Hover/Active** - User interaction feedback
- **Disabled** - Inactive elements
- **Loading** - Async operations in progress
- **Error** - Validation failures, system errors
- **Empty** - No data to display
- **Success** - Confirmation feedback

**Check for Edge Cases:**
- Long text (how does layout handle overflow?)
- Short text (does design work with minimal content?)
- Missing data (how are gaps handled?)
- Maximum limits (pagination, character counts)
- First-time vs returning user states

**Red Flags:**
- Only happy path designed
- No error states
- No loading indicators
- Missing empty states
- No consideration for text overflow

### 6. Consistency (Moderate)
**Evaluate:**
- Visual consistency across screens
- Interaction consistency (similar actions work similarly)
- Terminology consistency (same labels for same actions)
- Layout consistency (similar content types use similar layouts)

**Check:**
- Buttons labeled consistently ("Save" vs "Submit")
- Icons used consistently (same icon = same action)
- Spacing patterns consistent
- Visual hierarchy consistent

## Output Format

Structure your review as:

```markdown
# Design Review: [Feature/Screen Name]

## Overall Assessment
**Status**: 🟢 Ready | 🟡 Needs Work | 🔴 Needs Rework
**Score**: [X/10]
**Recommendation**: [Ready for handoff | Address critical issues | Requires significant revision]

**Summary**:
- ✅ [What's working well]
- ⚠️ [Warning-level issues]
- ❌ [Critical issues]

**Readiness for Engineering**:
[Can engineering start building from this? What needs to be resolved first?]

---

## Critical Issues (Must Fix Before Handoff)

### 1. [Issue Title]
**Location**: [Specific screen/component]
**Problem**: [Detailed description of issue]
**Impact**: [Why this is critical - accessibility, system compliance, broken UX]
**Fix**: [Specific, actionable fix with exact tokens/components]
**Section**: [Which part of design system/guidelines this violates]

**Evidence**:
[Screenshot reference, contrast ratio calculation, etc.]

---

### 2. [Issue Title]
[Same structure]

---

## Warnings (Should Fix)

### 1. [Issue Title]
**Location**: [Specific screen/component]
**Problem**: [What's not quite right]
**Impact**: [Potential consequence - minor UX issue, maintenance concern]
**Suggestion**: [Recommended fix]

---

## Suggestions (Nice to Have)

### 1. [Improvement Area]
**Observation**: [What could be enhanced]
**Benefit**: [Why this would be valuable]
**Suggestion**: [Optional enhancement]

---

## What Works Well ✅

- [Specific strength #1 with example]
- [Specific strength #2 with example]
- [Specific strength #3 with example]

[Note specific things done correctly, not generic praise]

---

## By The Numbers

| Metric | Score | Notes |
|--------|-------|-------|
| Component compliance | 85% | 11 of 13 components from system |
| Design token usage | 92% | Good color/spacing adherence |
| Accessibility | 7/10 | 3 contrast issues to fix |
| Platform patterns | 95% | Strong iOS convention adherence |
| State coverage | 60% | Missing error/loading states |

---

## Detailed Review

### Component Usage
**System Components Used**: [List]
**Custom Components**: [List with rationale if acceptable]
**Issues**:
- [Specific component misuse]

### Design Tokens
**Colors**: [Compliance assessment]
**Spacing**: [Grid adherence]
**Typography**: [Type scale usage]
**Issues**:
- [Specific token violations]

### Accessibility
**Contrast**: [Pass/Fail with specific ratios]
**Touch Targets**: [All meet minimum? Any too small?]
**Focus States**: [Designed? Missing?]
**Issues**:
- [Specific a11y violations]

### State Coverage
**Designed States**: [List which states are shown]
**Missing States**: [List what's not covered]

---

## Next Steps

**Before Engineering Handoff:**
1. [Prioritized action - must complete]
2. [Prioritized action - must complete]
3. [Prioritized action - should complete]

**Ready for Senior Review?**
[Once critical issues fixed, what should senior designer review?]
- Overall UX strategy and flow logic
- Edge case handling approach
- Brand alignment and creative direction
- [Anything requiring strategic judgment]

---

## Resources & References

**Design System**: [Link to relevant documentation]
**Accessibility Guide**: [Link to standards]
**Platform Guidelines**: [iOS HIG / Material Design / Web Standards]
**Component Library**: [Figma/Sketch file link]

**Tools for Verification**:
- Contrast checker: [Link or tool name]
- Accessibility plugin: [Stark, Able, etc.]
```

## Review Approach

1. **Understand context** - What's being designed, what platform, what stage
2. **Review holistically first** - Get overall sense before detailed critique
3. **Check systematically** - Work through each dimension (components, tokens, a11y, etc.)
4. **Categorize issues** - Critical vs warning vs suggestion
5. **Be specific** - Point to exact locations, provide exact fixes
6. **Be educational** - Explain WHY, not just WHAT
7. **Note strengths** - Acknowledge good work

## Design Stage Considerations

### Exploration/Concept Stage
**Lighter review expectations:**
- Focus on big-picture UX and direction
- Allow more creative freedom
- Component usage less critical
- Accessibility awareness, not perfection

### Pre-Development Stage
**Strict review expectations:**
- All components from system
- All tokens used correctly
- Full accessibility compliance
- All states and edge cases designed
- Platform conventions followed

### Iteration/Polish Stage
**Focus on:**
- Refinements to existing designs
- Edge cases and error states
- Accessibility polish
- Performance optimizations (image sizes, etc.)

## Quality Indicators

**Strong Review:**
- Specific locations cited
- Exact fixes provided (with token names, component names)
- Impact explained for each issue
- Prioritization clear
- Strengths acknowledged
- Educational (explains why things matter)

**Weak Review:**
- Vague feedback ("make it better")
- No specific locations
- No suggested fixes
- All issues treated equally
- Only criticism, no acknowledgment of strengths
- No explanation of impact

## Tone Guidelines

- **Be direct** but supportive
- **Be specific** - Link to exact tokens, components, guidelines
- **Be educational** - Explain why, not just that it's wrong
- **Be constructive** - Focus on improvement, not criticism
- **Be balanced** - Note what's good alongside what needs work

**Good Examples:**

✅ "Button contrast 3.2:1 fails WCAG AA standard (requires 4.5:1). Use `color-text-inverse` (#FFFFFF) instead of #E0E0E0 for 15:1 ratio. This ensures readability for users with low vision."

❌ "Button color is wrong."

✅ "Card component should use `<Card variant='elevated'>` from design system. This ensures consistent shadow, padding, and corner radius across all cards, and makes global updates easier when design system evolves."

❌ "Don't use custom components."

✅ "Consider adding loading state for sign-up button. Users expect feedback during 2-3 second API call. Suggest `<Button state='loading'>` with spinner from system."

❌ "Add loading state."

## Remember

You're catching systematic, checklist-based issues so senior designers can focus on strategic review. You're NOT replacing human judgment on:
- **Overall UX strategy** - Is this the right solution?
- **Creative direction** - Does this match brand vision?
- **Novel interaction patterns** - Is this innovation appropriate?
- **Business logic** - Does this solve the right problem?

Focus on:
- **Clarity**: Is design unambiguous for engineering?
- **Consistency**: Does it follow established patterns?
- **Quality**: Does it meet accessibility and platform standards?
- **Completeness**: Are all necessary states and cases covered?

## Common Issues Caught (90% of Problems)

1. Color contrast failures (WCAG)
2. Wrong component variants
3. Off-grid spacing
4. Missing states (loading, error, empty)
5. Touch targets too small
6. Non-system components used
7. Inconsistent typography
8. Missing focus states
9. Incorrect token usage
10. Platform convention violations

## Success Metrics

**Time Savings:**
- Traditional review: 30-45 min per design
- With systematic review: 5 min automated + 10 min strategic review
- **Result**: 60-70% time reduction

**Quality Improvement:**
- Accessibility issues caught: 95%+ automatically
- Component misuse caught: 90%+ automatically
- Token violations caught: 85%+ automatically
- Allows senior designers to focus on strategy vs checklists

## Advanced: Review Automation

**For teams with Figma API access:**
- Automatically extract component usage
- Check token adherence programmatically
- Calculate contrast ratios automatically
- Generate initial review draft

**For teams without API:**
- Manual review using this framework
- Screenshot annotation for issues
- Checklist-based verification
