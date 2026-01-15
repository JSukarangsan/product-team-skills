# AI-First Product Team Skills

> Production-ready Claude skills for product managers, designers, and product leaders

A curated collection of specialized AI skills that extend Claude's capabilities for common product management workflows. Each skill provides structured analysis, actionable outputs, and proven frameworks used across 50+ product teams.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills](https://img.shields.io/badge/skills-7-blue.svg)](./skills/)
[![Maintained](https://img.shields.io/badge/Maintained-yes-green.svg)](https://github.com/JSukarangsan/product-team-skills)

---

## What Are Claude Skills?

Claude Skills are specialized markdown files (`SKILL.md`) that give Claude domain expertise, structured workflows, and output templates for specific tasks. Think of them as "plugins" that extend Claude's capabilities with battle-tested product management frameworks.

**Instead of this:**
```
"Can you review my PRD?"
[Generic, unstructured feedback]
```

**You get this:**
```
Use the PRD Analysis skill to review this document.
[Structured analysis with readiness score, prioritized issues, specific fixes]
```

---

## 🎯 Quick Start

### 1. Choose a Skill

Browse the [skills directory](./skills/) and find what you need:
- **PRD Analysis** - Review product specs before engineering
- **Research Synthesis** - Turn user research into insights
- **User Feedback Synthesis** - Analyze support tickets and reviews
- **Competitive Analysis** - Understand your competitive landscape
- **Weekly Review** - Systematic product progress reviews
- **Sprint Planning** - Facilitate effective sprint planning
- **Design Review** - Catch design issues before handoff

### 2. Use the Skill

**Option A: Direct Copy/Paste**
```
Copy the content of the SKILL.md file and paste into your Claude conversation:

"I want you to act as the [Skill Name] skill. Here's the skill definition:
[paste SKILL.md content]

Now, [your specific request]"
```

**Option B: Claude Desktop Integration**
```bash
# Copy skill to your Claude configuration
cp skills/prd-analysis/SKILL.md ~/.claude/skills/

# Reference in conversation
"Use the PRD Analysis skill to review this document..."
```

**Option C: API/Projects**
Include the skill in your system prompt or project instructions.

### 3. Get Structured Output

Each skill provides:
- ✅ Consistent format across reviews
- ✅ Prioritized, actionable feedback
- ✅ Evidence-backed recommendations
- ✅ Quality scoring and readiness assessment

---

## 📚 Skills Overview

### Analysis & Research

<table>
<tr>
<td width="50%">

#### [Research Synthesis](./skills/research-synthesis/)
Transform user research into actionable insights
- Pattern identification across data sources
- Evidence-backed insight extraction
- Prioritized opportunity recommendations

**Best for:** Processing interview notes, survey results, analytics data

</td>
<td width="50%">

#### [User Feedback Synthesis](./skills/user-feedback-synthesis/)
Analyze feedback from multiple channels
- Multi-source aggregation (tickets, reviews, social)
- Sentiment analysis and trend tracking
- Root cause identification

**Best for:** Monthly feedback reviews, backlog prioritization

</td>
</tr>
<tr>
<td width="50%">

#### [Competitive Analysis](./skills/competitive-analysis/)
Understand your competitive landscape
- Feature parity matrices
- Go-to-market strategy analysis
- Strategic SWOT assessment

**Best for:** Market research, positioning decisions, roadmap planning

</td>
<td width="50%">

</td>
</tr>
</table>

### Documentation & Planning

<table>
<tr>
<td width="50%">

#### [PRD Analysis](./skills/prd-analysis/)
Review product specs for completeness
- Problem definition validation
- Success metrics evaluation
- Readiness scoring for engineering

**Best for:** Pre-engineering PRD reviews, stakeholder alignment

</td>
<td width="50%">

#### [Weekly Review](./skills/weekly-review/)
Systematic weekly product reviews
- Metrics dashboard with trends
- Initiative tracking (on track/at risk/blocked)
- Clear prioritization for next week

**Best for:** Weekly team syncs, stakeholder updates

</td>
</tr>
<tr>
<td width="50%">

#### [Sprint Planning](./skills/sprint-planning/)
Facilitate effective sprint planning
- Sprint goal definition framework
- Capacity calculation methodology
- Dependency and risk assessment

**Best for:** Sprint planning meetings, backlog refinement

</td>
<td width="50%">

</td>
</tr>
</table>

### Design & Quality

<table>
<tr>
<td width="50%">

#### [Design Review](./skills/design-review/)
Catch design issues before handoff
- Component usage verification
- Design token compliance
- WCAG 2.1 AA accessibility checks

**Best for:** Design QA, pre-handoff reviews, junior designer feedback

</td>
<td width="50%">

</td>
</tr>
</table>

---

## 💡 Real-World Examples

### Example 1: PRD Review

**Input:**
```markdown
Use the PRD Analysis skill to review this PRD for our new
onboarding flow redesign.

[Paste PRD content]
```

**Output:**
```markdown
# PRD Analysis: Onboarding Flow v2

## Overall Assessment
Readiness Score: 6/10
Recommendation: Needs clarification before engineering

## Critical Issues (Must Address)
1. Missing Success Metrics Baseline
   - Problem: States "increase activation" but no current baseline
   - Impact: Can't measure success
   - Fix: Add current activation rate and target

2. Unclear User Flow for Error Cases
   - Problem: Only happy path documented
   - Impact: Engineering will make assumptions
   - Fix: Document validation failures, network errors

[Full structured analysis...]
```

### Example 2: Competitive Analysis

**Input:**
```markdown
Use the Competitive Analysis skill to analyze these three
competitors: [CompanyA, CompanyB, CompanyC]

I have access to:
- Their pricing pages
- G2 reviews
- Recent product updates
```

**Output:**
```markdown
# Competitive Analysis: Project Management Tools

## Strategic Recommendations
1. Attack CompanyA's weakness in mobile experience
2. Defend against CompanyB's new AI features
3. Ignore CompanyC's enterprise play (different segment)

## Competitor Deep Dives
[Detailed SWOT, feature parity, strategic intent for each...]

## Differentiation Opportunities
1. Real-time collaboration (only we have this)
2. Mobile-first design (CompanyA weakness)
[Full analysis...]
```

---

## 🎓 Who This Is For

**Product Managers** looking to:
- Speed up PRD reviews
- Synthesize research faster
- Track competitive intelligence systematically

**Product Leaders** who need:
- Consistent weekly reviews across teams
- Standardized sprint planning practices
- Scalable design review processes

**Solo Founders / Small Teams** wanting:
- Enterprise-grade processes without overhead
- Structured decision-making frameworks
- Time-saving automation for routine tasks

**Product Ops Teams** building:
- Standardized workflows across product org
- Quality gates for product artifacts
- Data-driven prioritization processes

---

## 🏗️ How Skills Are Built

Each skill follows a consistent structure:

```yaml
---
name: skill-name
description: When to use this skill and what it does
---

# Skill Name

## Your Role
[How the AI should approach this task]

## Framework
[Structured methodology for analysis]

## Output Format
[Template with examples]

## Quality Indicators
[What good vs weak looks like]

## Tone Guidelines
[How to communicate findings]

## Remember
[Scope boundaries and key principles]
```

**Design Principles:**
- **Opinionated** - Clear stances, not wishy-washy
- **Actionable** - Every insight has a recommendation
- **Evidence-based** - Recommendations backed by data/reasoning
- **Practical** - Built from real product team experience
- **Educational** - Explains why, not just what

---

## 🚀 Advanced Usage

### Customization

Fork skills and adapt them for your team:

```markdown
# Add team-specific context
Your company's design system uses Material Design 3...
Your PRDs must include security considerations...
Your sprint velocity averages 35 points...

# Adjust evaluation criteria
For B2B enterprise:
- Add compliance requirements
- Emphasize scalability
- Include procurement considerations

# Modify output format
Match your existing templates
Integrate with your project management tools
```

### Chaining Skills

Combine multiple skills for complex workflows:

```markdown
1. Use Research Synthesis to analyze user interviews
2. Use Competitive Analysis to benchmark vs market
3. Use PRD Analysis to validate the resulting spec
4. Use Sprint Planning to scope the first iteration
```

### Integration with Tools

**Notion/Confluence:**
Use skills to generate structured documentation

**Linear/Jira:**
Generate well-formatted issues and stories

**Figma:**
Reference designs in review workflows

**Analytics platforms:**
Provide data for synthesis skills

---

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](./CONTRIBUTING.md) for:
- How to suggest new skills
- Guidelines for improving existing skills
- Testing and quality standards

**Ideas for new skills:**
- Roadmap Planning
- OKR Setting
- Stakeholder Communication
- Technical Spec Review
- Go-to-Market Planning

---

## 📖 Learning Resources

**Using Claude Skills:**
- [Claude Desktop Documentation](https://docs.anthropic.com/claude/docs/claude-desktop)
- [Prompt Engineering Guide](https://docs.anthropic.com/claude/docs/prompt-engineering)

**Product Management Frameworks:**
Each skill includes references to frameworks and methodologies

**AI-First Product Teams:**
Learn how to build AI-native product organizations at [summerfriday.co](https://summerfriday.co)

---

## 📜 License

MIT License - Use freely, adapt for your team, share improvements.

See [LICENSE](./LICENSE) for full details.

---

## 🙋 FAQ

### Q: Do I need Claude Pro/Enterprise?
**A:** No. These skills work with any Claude version (free, Pro, Team, Enterprise).

### Q: Can I use these with other AI models?
**A:** Yes, with adaptation. The frameworks are model-agnostic, but output quality varies by model.

### Q: How do I know which skill to use?
**A:** See the [Quick Reference Guide](./docs/quick-reference.md) for decision tree.

### Q: Can I share these with my team?
**A:** Absolutely! That's what they're built for. MIT license allows free use and modification.

### Q: Are these based on real experience?
**A:** Yes. These frameworks have been tested across 50+ product teams through [Summer Friday & Partners](https://summerfriday.co) consulting work.

### Q: How often are these updated?
**A:** Monthly updates based on feedback and new product management patterns. See [CHANGELOG](./CHANGELOG.md).

---

## 👤 About

Created by [Jon Sukarangsan](https://github.com/JSukarangsan) | [Summer Friday & Partners](https://summerfriday.co)

AI transformation consulting for product teams and digital agencies.

**More resources:**
- Course: [From Experiments to Revenue: AI Playbook for Agencies](https://summerfriday.co/course)
- Playbook: [AI-First Product Teams Guide](https://summerfriday.co/playbook)
- Consulting: [AI Strategy & Implementation](https://summerfriday.co/consulting)

---

## ⭐ Support This Project

If these skills save you time or improve your product process:
- **Star this repo** to help others discover it
- **Share** with your product team
- **Contribute** improvements or new skills
- **Provide feedback** on what's working (or not)

Built with ❤️ for product teams everywhere.