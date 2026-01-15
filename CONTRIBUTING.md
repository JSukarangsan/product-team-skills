# Contributing to Product Team Skills

Thank you for your interest in contributing! These skills are built from real-world product team experience, and we welcome improvements, bug fixes, and new skills from the community.

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Suggesting New Skills](#suggesting-new-skills)
- [Improving Existing Skills](#improving-existing-skills)
- [Reporting Issues](#reporting-issues)
- [Skill Quality Standards](#skill-quality-standards)
- [Testing Guidelines](#testing-guidelines)

---

## Code of Conduct

This project follows a simple code of conduct:
- **Be respectful** - Critique ideas, not people
- **Be constructive** - Suggest improvements, don't just complain
- **Be specific** - Provide examples and context
- **Be collaborative** - We're all learning together

---

## How to Contribute

### 1. Fork & Clone
```bash
# Fork the repository on GitHub, then:
git clone https://github.com/YOUR_USERNAME/product-team-skills.git
cd product-team-skills
```

### 2. Create a Branch
```bash
git checkout -b feature/your-contribution-name
```

### 3. Make Your Changes
- Follow the [Skill Quality Standards](#skill-quality-standards)
- Test your changes (see [Testing Guidelines](#testing-guidelines))
- Update documentation if needed

### 4. Commit & Push
```bash
git add .
git commit -m "feat: Add [specific improvement]"
git push origin feature/your-contribution-name
```

### 5. Open a Pull Request
- Describe what you changed and why
- Include examples of skill output (before/after if improving existing skill)
- Reference any related issues

---

## Suggesting New Skills

We're always looking for new product management workflows to automate. Before suggesting a new skill:

### Check if it already exists
Review existing skills to avoid duplication.

### Validate the need
- Is this a common product management task?
- Would multiple teams benefit from this?
- Can it be systematized (vs requiring pure human judgment)?

### Open an issue first
Use the "New Skill Proposal" template:

```markdown
**Skill Name:** [Proposed name]

**Use Case:**
[When would product teams use this? What problem does it solve?]

**Typical Input:**
[What information would the skill analyze?]

**Desired Output:**
[What structured output should it provide?]

**Frequency:**
[How often would teams use this? Daily/Weekly/Monthly/Quarterly]

**Similar Tools/Frameworks:**
[Are there existing frameworks this could build on?]

**Why This Matters:**
[Business impact, time savings, quality improvement]
```

### Wait for feedback
Maintainers will provide feedback on:
- Fit with existing skills
- Potential overlap
- Scope and complexity
- Priority

---

## Improving Existing Skills

We welcome improvements to existing skills! Common improvements:

### 1. Clarity & Usability
- Simplify complex explanations
- Add examples
- Improve output templates
- Fix typos or formatting

**Example PR:**
```markdown
Improve PRD Analysis examples

- Added "good vs bad" examples for success metrics
- Clarified acceptance criteria evaluation
- Fixed formatting in output template
```

### 2. Framework Enhancements
- Add evaluation criteria
- Expand edge cases
- Improve prioritization logic
- Add quality indicators

**Example PR:**
```markdown
Enhance Competitive Analysis SWOT framework

- Added "Emerging Threats" category for early detection
- Expanded partnership analysis section
- Added pricing model comparison matrix
```

### 3. Domain-Specific Adaptations
- B2B vs B2C variations
- Enterprise vs startup contexts
- Regulatory/compliance additions

**Example PR:**
```markdown
Add enterprise considerations to Sprint Planning

- Added compliance checkpoint section
- Included enterprise dependency types (legal, security, procurement)
- Expanded risk assessment for regulated industries
```

### 4. Real-World Testing
- Share results from using skills
- Document what worked well
- Identify gaps or confusing parts

**Example issue:**
```markdown
PRD Analysis: Success Metrics section unclear for B2B

When analyzing B2B product specs, the current success metrics
framework is too focused on usage metrics and doesn't adequately
cover business metrics (ARR, expansion revenue, etc.).

Suggested additions:
- B2B-specific metric categories
- Examples of good B2B success criteria
- Guidance on balancing usage vs business metrics
```

---

## Reporting Issues

### Bug Reports
Use the "Bug Report" template:

```markdown
**Skill:** [Which skill has the issue]

**Problem:**
[What's wrong? Be specific.]

**Input Used:**
[What you asked the AI to do]

**Expected Output:**
[What you expected to happen]

**Actual Output:**
[What actually happened]

**Context:**
- Claude version: [Desktop/API/Web]
- Date: [When this occurred]
- Use case: [What you were trying to accomplish]
```

### Feature Requests
Use the "Feature Request" template:

```markdown
**Skill:** [Which skill to improve]

**Feature:**
[What capability should be added]

**Use Case:**
[When would you use this? Why does it matter?]

**Suggested Implementation:**
[How might this work? Optional but helpful]

**Examples:**
[Show examples of desired behavior]
```

---

## Skill Quality Standards

All skills (new or improved) must meet these standards:

### 1. Structure Requirements

**Required sections:**
```yaml
---
name: skill-name
description: Clear, concise description of when to use this skill
---

# Skill Name

## Your Role
[How the AI should approach the task]

## Framework
[Structured methodology - the "how"]

## Output Format
[Template with specific examples]

## Quality Indicators
[What distinguishes good from weak outputs]

## Tone Guidelines
[Communication style with good/bad examples]

## Remember
[Scope boundaries, what this skill does NOT do]
```

### 2. Content Quality

**Clear and Specific:**
- Avoid vague advice ("improve quality" → "increase contrast ratio to 4.5:1")
- Provide exact templates and examples
- Include actual output samples

**Actionable:**
- Every issue should have a recommended fix
- Recommendations should be implementable
- Include specific next steps

**Evidence-Based:**
- Recommendations backed by reasoning
- Reference established frameworks when applicable
- Show why things matter, not just what to do

**Balanced:**
- Acknowledge trade-offs
- Note when rules can be broken
- Recognize context matters

### 3. Examples Required

Each skill must include:
- ✅ At least 3 "good vs bad" examples
- ✅ Complete sample output template
- ✅ Real-world use case description
- ✅ Quality indicators with specifics

### 4. Testing Standards

Before submitting:
- ✅ Test with at least 2 real examples
- ✅ Verify output follows template
- ✅ Check for consistent quality
- ✅ Validate against quality indicators

---

## Testing Guidelines

### How to Test a Skill

**1. Prepare Test Cases**
Gather 2-3 real examples:
- Typical case (most common scenario)
- Edge case (unusual but valid scenario)
- Negative case (should identify problems)

**2. Run the Skill**
```markdown
I want you to act as the [Skill Name] skill.

[Paste entire SKILL.md content]

Now, [your specific request with test data]
```

**3. Evaluate Output**
Check against quality standards:
- [ ] Follows output template structure
- [ ] Provides specific, actionable feedback
- [ ] Prioritizes issues appropriately
- [ ] Includes evidence/reasoning
- [ ] Tone is constructive and educational

**4. Document Results**
Include in your PR:
```markdown
## Testing Results

**Test Case 1: [Typical PRD Review]**
- Input: [Link to example or brief description]
- Output quality: ✅ Met all standards
- Notes: [Any observations]

**Test Case 2: [Edge Case - Missing sections]**
- Input: [Description]
- Output quality: ✅ Correctly identified gaps
- Notes: [Any observations]
```

### Test Data Sources

**For PRD Analysis:**
- Your team's actual PRDs (anonymize if needed)
- Open-source project specs
- Public product documentation

**For Research Synthesis:**
- Anonymized interview transcripts
- Public survey data
- Open-source user research

**For Competitive Analysis:**
- Publicly available product information
- Review sites (G2, Capterra)
- Pricing pages and marketing materials

**For Design Review:**
- Open-source design files
- Public Figma community files
- Your own design work

---

## Style Guide

### Writing Style

**Be direct:**
❌ "You might want to consider possibly adding..."
✅ "Add success metrics with baseline and target."

**Be specific:**
❌ "Improve the user experience."
✅ "Reduce time-to-value from 15 minutes to 5 minutes."

**Be educational:**
❌ "This is wrong."
✅ "This violates WCAG AA (requires 4.5:1 contrast). Use #FFFFFF for 15:1 ratio."

### Code Examples

Use fenced code blocks with language specification:
```markdown
```yaml
---
name: example-skill
description: Example description
---
`` `
```

### Formatting

- Use **bold** for emphasis on key terms
- Use `code` for technical terms, tokens, component names
- Use > blockquotes for user quotes or examples
- Use tables for comparison matrices
- Use ✅ ❌ ⚠️ for status indicators

---

## Review Process

### What to Expect

1. **Initial Review (1-3 days)**
   - Maintainer reviews for basic quality
   - Provides initial feedback
   - May request changes

2. **Testing (3-5 days)**
   - Maintainer tests with real examples
   - Validates output quality
   - Checks against standards

3. **Iteration (variable)**
   - Address feedback
   - Refine based on testing
   - Update documentation

4. **Approval & Merge**
   - Final review
   - Merge to main
   - Added to CHANGELOG

### Criteria for Acceptance

✅ **Must Have:**
- Follows skill structure template
- Includes complete output format
- Tested with real examples
- Documentation updated
- No conflicts with existing skills

✅ **Should Have:**
- Multiple examples (good/bad)
- Quality indicators defined
- Edge cases considered
- Practical use case described

✅ **Nice to Have:**
- Visual examples or screenshots
- Integration examples
- Advanced usage patterns

---

## Recognition

Contributors are recognized in:
- **README** - Contributors section
- **CHANGELOG** - Credit for specific contributions
- **Releases** - Notes on significant contributions

---

## Questions?

- **General questions:** Open a Discussion
- **Bug reports:** Open an Issue
- **Feature ideas:** Open an Issue with "Feature Request" label
- **Complex contributions:** Email jon@summerfriday.co

---

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for helping make product teams more effective with AI! 🚀