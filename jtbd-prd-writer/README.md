# JTBD PRD Writer

A Claude Code skill for creating Jobs-to-be-Done driven Product Requirement Documents optimized for both team collaboration and AI prototyping tools.

## Overview

This skill guides product teams through conversational discovery to create comprehensive 15-section PRDs that:
- Ground features in user motivations (not just actions)
- Create traceable chains from JTBD → User Stories → Acceptance Criteria
- Provide AI-ready technical specifications for tools like Cursor, Lovable, and Figma Make
- Bridge designer-native thinking with technical precision

## Installation

1. Copy the `SKILL.md` file into your Claude Code project
2. Reference it in your conversation:
   ```
   I want you to act as the JTBD PRD Writer skill.
   I'm working on [feature description]. Let's start the discovery process.
   ```

## Quick Start

See [`examples/usage-guide.md`](examples/usage-guide.md) for comprehensive usage instructions.

### Basic Workflow

1. **Activate the skill**: Reference SKILL.md in your conversation
2. **Answer discovery questions**: Claude asks 4 core questions about:
   - Problem & Impact
   - Users & Context
   - Technical Landscape
   - Success Definition
3. **Review generated PRD**: 15-section document with JTBD, user stories, component inventory, data models
4. **Refine as needed**: Request specific updates or enhancements

## Key Features

### Jobs-to-be-Done First
Uses the format: "When [situation], I want to [motivation], so I can [outcome]"

This prevents building features that are syntactically correct but fail to serve actual user needs.

### 15-Section PRD Structure
1. Overview (with AI Build Summary)
2. Goals & Success Metrics
3. Scope & Constraints
4. **Jobs to Be Done (JTBD)**
5. **User Stories** (mapped to JTBD)
6. Proposed Experience
7. **Component Inventory** (flat list for AI tools)
8. **Data Models** (TypeScript interfaces)
9. API / Integration Surface
10. State Management Map
11. Tech Stack Recommendation
12. Suggested File Structure
13. **Acceptance Criteria** (binary, testable)
14. Open Questions & Risks
15. Rollout & Next Steps

### AI Prototyping Ready

The PRD includes:
- **Component Inventory**: Exact component names for scaffolding (RecipeSaveButton, RecipeNotesField)
- **Data Models**: Complete TypeScript interfaces with field descriptions
- **API Specs**: Full endpoint documentation with request/response shapes
- **File Structure**: ASCII tree for code generation targets

## Examples

### Example PRD
See [`examples/recipe-save-prd.md`](examples/recipe-save-prd.md) for a complete example of an enhanced recipe save feature.

### Common Workflows
See [`examples/usage-guide.md`](examples/usage-guide.md#common-workflows) for:
- Starting from scratch
- Refining existing ideas
- Converting traditional PRDs to JTBD format

## Integration with AI Tools

### Cursor
1. Generate PRD
2. Copy Component Inventory + Data Models
3. Paste into Cursor for type-safe code generation

### Lovable (formerly GPT Engineer)
1. Generate PRD
2. Copy entire PRD or AI Build Summary
3. Generate working prototype

### Figma Make/V0
1. Generate PRD
2. Copy Proposed Experience + Component Inventory
3. Generate design prototypes

## Quality Indicators

**High-quality PRDs feature:**
- ✅ JTBD jobs with situational context
- ✅ Traceable chain: JTBD → User Stories → Acceptance Criteria
- ✅ Specific component names (not categories)
- ✅ Complete TypeScript interfaces
- ✅ Binary, testable acceptance criteria
- ✅ Explicit state management decisions

**Weak PRDs exhibit:**
- ❌ Generic user stories without JTBD grounding
- ❌ Missing situational context
- ❌ Vague component specs
- ❌ Ambiguous acceptance criteria

## Files

- `SKILL.md` - Main skill definition
- `examples/recipe-save-prd.md` - Complete example PRD
- `examples/usage-guide.md` - Comprehensive usage guide with tips and troubleshooting
- `README.md` - This file

## Credits

Adapted from [johnnychauvet/prd-skill](https://github.com/johnnychauvet/prd-skill) for product team workflows.

## License

MIT
