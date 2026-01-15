# Repository Deployment Guide

This guide explains how to deploy this content to https://github.com/JSukarangsan/product-team-skills

## Pre-Deployment Checklist

### 1. Verify Repository Structure

```
product-team-skills/
├── README.md (main repo README)
├── LICENSE
├── CONTRIBUTING.md
├── CHANGELOG.md
├── skills/
│   ├── README.md (skills index)
│   ├── prd-analysis/
│   │   └── SKILL.md
│   ├── research-synthesis/
│   │   └── SKILL.md
│   ├── user-feedback-synthesis/
│   │   └── SKILL.md
│   ├── competitive-analysis/
│   │   └── SKILL.md
│   ├── weekly-review/
│   │   └── SKILL.md
│   ├── sprint-planning/
│   │   └── SKILL.md
│   └── design-review/
│       └── SKILL.md
├── docs/
│   └── quick-reference.md
└── examples/
    ├── README.md
    └── prd-analysis-example.md
```

### 2. File Mapping

Map these files to GitHub repository:

| Local File | GitHub Path |
|------------|-------------|
| `REPOSITORY_README.md` | `README.md` |
| `LICENSE` | `LICENSE` |
| `CONTRIBUTING.md` | `CONTRIBUTING.md` |
| `CHANGELOG.md` | `CHANGELOG.md` |
| All skills/*.md | `skills/*.md` (same structure) |
| `docs/*` | `docs/*` (same structure) |
| `examples/*` | `examples/*` (same structure) |

## Deployment Steps

### Option 1: Fresh Repository (Recommended)

If the repository is new or can be reset:

```bash
# Navigate to your local skills directory
cd "/Users/jonsukarangsan/Documents/apps/AI for Product Teams Guide/github-artifacts/skills"

# Initialize git if not already done
git init

# Rename REPOSITORY_README.md to README.md
mv REPOSITORY_README.md README.md

# Remove old design-review.md (replaced by SKILL.md version)
rm design-review.md

# Add all files
git add .

# Commit
git commit -m "Initial release: v1.0.0 - 7 production-ready product management skills"

# Add remote
git remote add origin https://github.com/JSukarangsan/product-team-skills.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Option 2: Updating Existing Repository

If repository already exists with content:

```bash
cd "/Users/jonsukarangsan/Documents/apps/AI for Product Teams Guide/github-artifacts/skills"

# Clone existing repo
git clone https://github.com/JSukarangsan/product-team-skills.git temp-repo
cd temp-repo

# Copy all new content
cp ../REPOSITORY_README.md ./README.md
cp ../LICENSE ./LICENSE
cp ../CONTRIBUTING.md ./CONTRIBUTING.md
cp ../CHANGELOG.md ./CHANGELOG.md

# Copy directories
cp -r ../skills ./
cp -r ../docs ./
cp -r ../examples ./

# Remove old design-review.md if it exists
rm -f design-review.md

# Stage changes
git add .

# Commit
git commit -m "Release v1.0.0: Complete skills collection with documentation"

# Push
git push origin main
```

### Option 3: Clean Slate (if repository has unrelated content)

```bash
# Backup existing repo if needed
cd path/to/existing/product-team-skills
git checkout -b backup-old-content
git push origin backup-old-content

# Reset main branch
git checkout main
git rm -rf .
git commit -m "Clean slate for v1.0.0"

# Copy new content
cd "/Users/jonsukarangsan/Documents/apps/AI for Product Teams Guide/github-artifacts/skills"
cp -r * path/to/existing/product-team-skills/

# Navigate back
cd path/to/existing/product-team-skills

# Rename main README
mv REPOSITORY_README.md README.md

# Commit and push
git add .
git commit -m "Release v1.0.0: Complete product team skills collection"
git push origin main --force
```

## Post-Deployment Tasks

### 1. Configure GitHub Repository Settings

**General:**
- Description: "Production-ready Claude skills for product managers, designers, and product leaders"
- Website: https://summerfriday.co
- Topics: `ai`, `claude`, `product-management`, `skills`, `prompts`, `productivity`, `llm`, `product-ops`

**Features:**
- ✅ Issues
- ✅ Discussions
- ❌ Projects (not needed initially)
- ❌ Wiki (using docs/ instead)

**About:**
```
Production-ready Claude skills for product management workflows.
Includes PRD analysis, research synthesis, competitive intelligence,
sprint planning, and more. Built from 50+ product teams.
```

### 2. Create GitHub Releases

Create v1.0.0 release:

**Tag:** `v1.0.0`
**Title:** `v1.0.0 - Initial Public Release`
**Description:**
```markdown
# Product Team Skills v1.0.0

First public release of AI-powered product management skills.

## What's Included

**7 Production-Ready Skills:**
- PRD Analysis - Review product specs for completeness
- Research Synthesis - Transform research into insights
- User Feedback Synthesis - Analyze multi-channel feedback
- Competitive Analysis - Understand competitive landscape
- Weekly Review - Systematic progress reviews
- Sprint Planning - Facilitate effective planning
- Design Review - Catch issues before handoff

**Complete Documentation:**
- Quick start guide
- Contribution guidelines
- Usage examples
- Quality standards

## Getting Started

1. Choose a skill from the [skills directory](./skills/)
2. Copy the SKILL.md content
3. Use with Claude (Desktop, API, or Web)
4. Get structured, actionable analysis

Full documentation: [README.md](./README.md)

## What's Next

See [CHANGELOG.md](./CHANGELOG.md) for planned features.

Built with ❤️ for product teams everywhere.
```

### 3. Set Up Issue Templates

Create `.github/ISSUE_TEMPLATE/` with:

**bug_report.md:**
```markdown
---
name: Bug Report
about: Report an issue with a skill
title: '[BUG] '
labels: bug
assignees: ''
---

**Skill:** [Which skill has the issue]

**Problem:**
[Describe what's wrong]

**Expected Behavior:**
[What should happen]

**Actual Behavior:**
[What actually happens]

**Steps to Reproduce:**
1.
2.
3.

**Context:**
- Claude version: [Desktop/API/Web]
- Date:
```

**feature_request.md:**
```markdown
---
name: Feature Request
about: Suggest an improvement or new skill
title: '[FEATURE] '
labels: enhancement
assignees: ''
---

**Type:** [New Skill / Skill Improvement / Documentation]

**Description:**
[What would you like to see?]

**Use Case:**
[When would this be useful? What problem does it solve?]

**Suggested Implementation:**
[Optional: How might this work?]
```

### 4. Enable Discussions

Create initial discussion categories:
- **Announcements** - Updates and releases
- **General** - Questions and conversation
- **Skill Ideas** - Suggest new skills
- **Show and Tell** - Share your results

### 5. Add Repository Badges

Verify badges in README.md are working:
- License badge
- Skills count
- Maintained status

### 6. Create Initial Pinned Issues

**Pin #1: "Welcome! Start Here"**
```markdown
# Welcome to Product Team Skills!

Thanks for checking out this project. Here's how to get started:

## Quick Links
- 📚 [All Skills](./skills/)
- 🚀 [Quick Reference](./docs/quick-reference.md)
- 📝 [Examples](./examples/)
- 🤝 [Contributing](./CONTRIBUTING.md)

## Popular Skills
- [PRD Analysis](./skills/prd-analysis/) - Most used
- [Design Review](./skills/design-review/) - Fastest ROI
- [Weekly Review](./skills/weekly-review/) - Best for teams

## Need Help?
- Can't decide which skill? Check [Quick Reference](./docs/quick-reference.md)
- Skill not working? Open an issue
- Want to contribute? See [CONTRIBUTING.md](./CONTRIBUTING.md)
```

## Verification Checklist

After deployment, verify:

- [ ] README displays correctly on GitHub
- [ ] All skills are accessible and formatted
- [ ] Links between files work
- [ ] Examples display properly
- [ ] License is visible
- [ ] Repository description is set
- [ ] Topics are added
- [ ] Issue templates work
- [ ] Discussions are enabled (if desired)
- [ ] Social preview image set (optional)

## Social Preview Image (Optional)

Create a 1280×640px image with:
- "Product Team Skills"
- "7 AI Skills for Product Managers"
- Summer Friday branding
- Upload to Settings → Social Preview

## Analytics (Optional)

Consider adding:
- Google Analytics to track documentation views
- GitHub Stars tracking
- Issue/PR analytics

## Promotion

After deployment:

1. **Announce on LinkedIn**
   - Tag Summer Friday & Partners
   - Include link to repo
   - Share 1-2 specific use cases

2. **Share in Communities**
   - Product Manager communities
   - AI/ML communities
   - Claude Discord/Slack

3. **Add to Portfolio**
   - Summer Friday website
   - LinkedIn projects
   - Resume/CV

4. **Cross-Link**
   - From AI-First Product Teams Guide
   - From course materials
   - From consulting proposals

## Maintenance Schedule

**Weekly:**
- Monitor issues and discussions
- Respond to questions

**Monthly:**
- Review and merge PRs
- Update CHANGELOG
- Consider new skill ideas

**Quarterly:**
- Major version updates
- New skill releases
- Documentation refresh

## Support

Questions about deployment?
- Email: jon@summerfriday.co
- GitHub: @JSukarangsan