# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-15

### Added

**Core Skills Collection**
- PRD Analysis skill - Evaluate product specs for completeness and readiness
- Research Synthesis skill - Transform user research into actionable insights
- User Feedback Synthesis skill - Analyze feedback from multiple channels
- Competitive Analysis skill - Understand competitive landscape systematically
- Weekly Review skill - Conduct structured weekly product reviews
- Sprint Planning skill - Facilitate effective sprint planning
- Design Review skill - Catch design issues before engineering handoff

**Documentation**
- Comprehensive README with quick start guide
- CONTRIBUTING.md with clear contribution guidelines
- Skill quality standards and testing protocols
- MIT License for open source use

**Repository Structure**
- Organized skills directory with consistent formatting
- YAML frontmatter for all skills
- Structured output templates for each skill
- Quality indicators and tone guidelines

### Design Principles

All skills follow these principles:
- **Opinionated** - Clear stances, not wishy-washy
- **Actionable** - Every insight has a recommendation
- **Evidence-based** - Backed by data and reasoning
- **Practical** - Built from real product team experience
- **Educational** - Explains why, not just what

### Testing

All skills tested with:
- Real-world product artifacts
- Multiple use cases per skill
- Edge cases and negative scenarios
- Validated against quality standards

---

## [1.1.0] - 2026-03-16

### Added

- **JTBD PRD Writer** skill for creating Jobs-to-be-Done driven Product Requirement Documents
  - Conversational discovery process with 4 core questions (Problem, Users, Tech, Success)
  - 15-section PRD structure including JTBD, user stories, component inventory, data models, acceptance criteria
  - Optimized for AI prototyping tools (Cursor, Lovable, Figma Make/V0)
  - Complete example PRD for recipe save feature
  - Comprehensive usage guide with workflows, best practices, and troubleshooting
  - Adapted from [johnnychauvet/prd-skill](https://github.com/johnnychauvet/prd-skill)

**Key Features:**
- Jobs-to-be-Done format: "When [situation], I want to [motivation], so I can [outcome]"
- Traceable chain from JTBD → User Stories → Acceptance Criteria
- AI-ready technical specifications (component names, TypeScript interfaces, API docs)
- File structure scaffolding for code generation
- Integration guides for popular AI development tools

---

## [Unreleased]

### Planned

**New Skills (Q1 2026)**
- Roadmap Planning skill
- OKR Setting & Review skill
- Stakeholder Communication skill
- Technical Spec Review skill
- Go-to-Market Planning skill

**Enhancements**
- Add video examples of skill usage
- Create skill chaining templates
- Build integration examples (Notion, Linear, Figma)
- Expand B2B vs B2C variations
- Add multilingual support

**Community**
- Gather feedback from first 100 users
- Create discussion forum for skill improvements
- Establish contributor recognition program

---

## Version History

### [1.1.0] - 2026-03-16
- Added JTBD PRD Writer skill
- 8 production-ready skills
- Enhanced documentation & planning capabilities
- AI prototyping tool integrations

### [1.0.0] - 2026-01-15
- Initial public release
- 7 production-ready skills
- Complete documentation
- MIT licensed

---

## How to Use This Changelog

- **Added** - New skills or features
- **Changed** - Changes to existing skills
- **Deprecated** - Skills soon to be removed
- **Removed** - Removed skills or features
- **Fixed** - Bug fixes
- **Security** - Security updates

---

## Contributing to Changelog

When submitting a PR, please update the [Unreleased] section with your changes.

Maintainers will move items to version-specific sections upon release.

---

## Feedback

Have ideas for new skills or improvements?
- Open an issue with the "Feature Request" label
- Start a discussion in GitHub Discussions
- Email: jon@summerfriday.co