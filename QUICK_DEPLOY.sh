#!/bin/bash
# Quick Deployment Script for product-team-skills Repository
# Usage: bash QUICK_DEPLOY.sh

set -e  # Exit on error

echo "🚀 Product Team Skills - Quick Deploy"
echo "======================================"
echo ""

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if we're in the right directory
if [ ! -f "DEPLOYMENT.md" ]; then
    echo -e "${RED}Error: Must run from skills directory${NC}"
    echo "Navigate to: /Users/jonsukarangsan/Documents/apps/AI for Product Teams Guide/github-artifacts/skills"
    exit 1
fi

echo -e "${BLUE}Step 1: Preparing files...${NC}"

# Rename main README
if [ -f "REPOSITORY_README.md" ]; then
    mv REPOSITORY_README.md README.md
    echo "✅ Renamed REPOSITORY_README.md → README.md"
else
    echo "⚠️  REPOSITORY_README.md already renamed or missing"
fi

# Remove old design-review.md if exists
if [ -f "design-review.md" ]; then
    rm design-review.md
    echo "✅ Removed old design-review.md"
fi

echo ""
echo -e "${BLUE}Step 2: Git setup...${NC}"

# Initialize git if not already
if [ ! -d ".git" ]; then
    git init
    echo "✅ Initialized git repository"
fi

# Check if remote exists
if git remote | grep -q "origin"; then
    echo "✅ Remote 'origin' already exists"
else
    echo ""
    echo "Add GitHub remote? (y/n)"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        git remote add origin https://github.com/JSukarangsan/product-team-skills.git
        echo "✅ Added remote origin"
    fi
fi

echo ""
echo -e "${BLUE}Step 3: Review changes...${NC}"
git status

echo ""
echo "Proceed with commit? (y/n)"
read -r response

if [[ ! "$response" =~ ^[Yy]$ ]]; then
    echo "Deployment cancelled. Files prepared but not committed."
    exit 0
fi

echo ""
echo -e "${BLUE}Step 4: Committing...${NC}"

# Add all files
git add .

# Commit
git commit -m "Release v1.0.0: Production-ready product team skills collection

- 7 complete skills with Anthropic SKILL.md format
- PRD Analysis, Research Synthesis, User Feedback Synthesis
- Competitive Analysis, Weekly Review, Sprint Planning, Design Review
- Complete documentation (README, CONTRIBUTING, examples)
- MIT licensed for open source use

Built from 50+ product teams. Ready for production."

echo "✅ Committed changes"

echo ""
echo -e "${BLUE}Step 5: Push to GitHub...${NC}"
echo "Push to main branch? (y/n)"
read -r response

if [[ "$response" =~ ^[Yy]$ ]]; then
    git branch -M main
    git push -u origin main
    echo "✅ Pushed to GitHub"
else
    echo "⚠️  Committed locally but not pushed"
    echo "To push later, run: git push -u origin main"
fi

echo ""
echo -e "${GREEN}======================================"
echo "✅ Deployment Complete!"
echo "======================================${NC}"
echo ""
echo "Next steps:"
echo "1. Visit: https://github.com/JSukarangsan/product-team-skills"
echo "2. Configure repository settings (see DEPLOYMENT.md)"
echo "3. Create v1.0.0 release"
echo "4. Share on LinkedIn!"
echo ""
echo "For detailed post-deployment tasks, see DEPLOYMENT.md"
