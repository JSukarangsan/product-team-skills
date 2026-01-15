# Quick Reference Guide

Not sure which skill to use? This guide helps you choose the right skill for your task.

## Decision Tree

```
What are you trying to do?

├─ Review a document
│  ├─ Product spec (PRD) → Use PRD Analysis
│  └─ Design mockups → Use Design Review
│
├─ Synthesize information
│  ├─ User research data → Use Research Synthesis
│  ├─ Support tickets/reviews → Use User Feedback Synthesis
│  └─ Competitor information → Use Competitive Analysis
│
└─ Plan or track work
   ├─ Weekly progress review → Use Weekly Review
   └─ Upcoming sprint → Use Sprint Planning
```

---

## By Use Case

### 📝 Before Engineering Starts

**Reviewing product specs**
→ **[PRD Analysis](../skills/prd-analysis/)**
- Check completeness before engineering
- Validate success metrics
- Identify missing acceptance criteria
- Get readiness score

**Reviewing designs**
→ **[Design Review](../skills/design-review/)**
- Check component usage
- Verify accessibility (WCAG AA)
- Validate design token usage
- Catch issues before handoff

### 🔍 Understanding Users & Market

**Processing user research**
→ **[Research Synthesis](../skills/research-synthesis/)**
- Interviews, surveys, analytics
- Identify patterns across data sources
- Extract insights with evidence
- Prioritize opportunities

**Analyzing user feedback**
→ **[User Feedback Synthesis](../skills/user-feedback-synthesis/)**
- Support tickets, reviews, social media
- Theme and categorize feedback
- Track sentiment trends
- Root cause analysis

**Understanding competitors**
→ **[Competitive Analysis](../skills/competitive-analysis/)**
- Feature parity assessment
- Pricing and GTM strategy
- SWOT analysis
- Identify gaps and opportunities

### 📊 Planning & Tracking

**Weekly team sync**
→ **[Weekly Review](../skills/weekly-review/)**
- Metrics dashboard
- Progress tracking (on track/at risk/blocked)
- Risk assessment
- Prioritize next week

**Sprint planning meeting**
→ **[Sprint Planning](../skills/sprint-planning/)**
- Define sprint goals
- Calculate capacity
- Map dependencies
- Commit to realistic scope

---

## By Frequency

### Daily
- Design Review (for design teams)

### Weekly
- Weekly Review
- Sprint Planning (for 1-week sprints)

### Bi-Weekly
- Sprint Planning (for 2-week sprints)
- User Feedback Synthesis (light)

### Monthly
- User Feedback Synthesis (comprehensive)
- Competitive Analysis (updates)
- Research Synthesis (if doing monthly research)

### Quarterly
- Competitive Analysis (deep dive)
- Research Synthesis (major research initiatives)

### Ad-Hoc
- PRD Analysis (when PRDs are written)

---

## By Team Role

### Product Manager
**Primary skills:**
- PRD Analysis
- Weekly Review
- Sprint Planning
- User Feedback Synthesis

**Secondary skills:**
- Research Synthesis
- Competitive Analysis

### Product Designer
**Primary skills:**
- Design Review
- Research Synthesis

**Secondary skills:**
- User Feedback Synthesis
- Competitive Analysis

### Product Leader / VP Product
**Primary skills:**
- Weekly Review
- Competitive Analysis
- Research Synthesis

**Secondary skills:**
- Sprint Planning (for oversight)
- User Feedback Synthesis

### Product Ops
**Primary skills:**
- User Feedback Synthesis
- Weekly Review
- Sprint Planning

**Secondary skills:**
- All skills (process standardization)

### Solo Founder / Small Team
**Primary skills:**
- PRD Analysis (lightweight)
- Weekly Review
- User Feedback Synthesis

**Secondary skills:**
- Competitive Analysis
- Sprint Planning

---

## By Problem Type

### "I don't know if this spec is ready for engineering"
→ **PRD Analysis**

### "I need to make sense of all this user research"
→ **Research Synthesis**

### "We're getting tons of support tickets, what should we prioritize?"
→ **User Feedback Synthesis**

### "What are our competitors doing?"
→ **Competitive Analysis**

### "I need to prepare for our weekly sync"
→ **Weekly Review**

### "We need to plan the next sprint"
→ **Sprint Planning**

### "Is this design ready for dev handoff?"
→ **Design Review**

---

## By Input Type

### Text Documents
- Product specs → PRD Analysis
- Research transcripts → Research Synthesis
- Support tickets → User Feedback Synthesis
- Competitor websites → Competitive Analysis

### Data & Metrics
- Analytics dashboards → Weekly Review
- Survey results → Research Synthesis
- Review sites data → User Feedback Synthesis or Competitive Analysis

### Visual Assets
- Design mockups → Design Review
- Figma files → Design Review

### Project Status
- Initiative tracking → Weekly Review
- Sprint backlog → Sprint Planning

---

## Skill Combinations (Workflows)

### Product Discovery Flow
1. **Competitive Analysis** - Understand market
2. **Research Synthesis** - Validate user needs
3. **PRD Analysis** - Draft and review spec
4. **Sprint Planning** - Scope first iteration

### Continuous Improvement Flow
1. **User Feedback Synthesis** - Identify issues
2. **Research Synthesis** - Deep dive on top issues
3. **PRD Analysis** - Spec the fixes
4. **Weekly Review** - Track progress

### Pre-Launch Flow
1. **Competitive Analysis** - Benchmark positioning
2. **Design Review** - QA all designs
3. **PRD Analysis** - Final spec check
4. **Sprint Planning** - Plan launch sprint

### Leadership Review Flow
1. **Weekly Review** - Team progress
2. **User Feedback Synthesis** - Customer sentiment
3. **Competitive Analysis** - Market changes
4. **Sprint Planning** - Strategic priorities

---

## Time Investment vs Value

| Skill | Time Investment | Value |
|-------|----------------|-------|
| PRD Analysis | 5-10 min | High - Catches issues early |
| Design Review | 5-10 min | High - Prevents rework |
| User Feedback Synthesis | 20-30 min | High - Informs roadmap |
| Research Synthesis | 30-45 min | High - Validates strategy |
| Competitive Analysis | 45-60 min | Medium-High - Strategic insight |
| Weekly Review | 15-20 min | Medium-High - Maintains alignment |
| Sprint Planning | 20-30 min | Medium - Improves estimation |

**ROI Sweet Spot:** Design Review and PRD Analysis provide highest value for lowest time investment.

---

## Getting Started Recommendations

### Week 1: Start Simple
Pick ONE skill based on your current pain point:
- Designs often need rework? → **Design Review**
- PRDs missing details? → **PRD Analysis**
- Unclear what users want? → **User Feedback Synthesis**

### Week 2-4: Add Regular Rhythms
Add weekly/sprint skills:
- **Weekly Review** for team sync
- **Sprint Planning** for sprint prep

### Month 2: Add Strategic Skills
Add monthly/quarterly skills:
- **Competitive Analysis** monthly
- **Research Synthesis** as needed

---

## Tips for Success

### Start with Templates
Each skill includes output templates. Use them as starting points.

### Customize for Your Context
Add team-specific criteria:
```markdown
For our team, PRDs must also include:
- Security considerations
- Compliance requirements
- Migration plan from old version
```

### Chain Skills Together
```markdown
1. Use Research Synthesis on user interviews
2. Use the insights to inform Competitive Analysis
3. Use both to create a PRD
4. Use PRD Analysis to review the spec
5. Use Sprint Planning to scope implementation
```

### Iterate on Quality
First time: Rough output is fine
Second time: Refine the prompts
Third time: You'll have a pattern that works

### Share with Team
Once you find patterns that work, share with team:
- Save good prompts in shared docs
- Create team-specific variations
- Build into your workflow

---

## Common Questions

**Q: Can I use multiple skills at once?**
Yes, but sequential is usually better than parallel. Complete one analysis, then use those insights for the next.

**Q: How do I know if the output is good?**
Each skill includes "Quality Indicators" section. Compare your output against those criteria.

**Q: Can I modify the skills?**
Absolutely! Fork and customize for your team. See [CONTRIBUTING.md](../CONTRIBUTING.md).

**Q: What if my use case doesn't fit perfectly?**
Start with the closest skill and adapt it. Open an issue if you need a new skill type.

---

## Need Help?

- **Can't decide which skill?** Open a GitHub Discussion
- **Skill not working well?** Open an Issue
- **Want to suggest improvements?** See [CONTRIBUTING.md](../CONTRIBUTING.md)
- **Other questions?** Email jon@summerfriday.co