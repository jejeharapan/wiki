# SKILL: Article Management & Workflow

## Overview
Reusable workflow for creating, organizing, and validating corporate tool guide articles within the `/article` directory hierarchy.

## Hierarchy Pattern
```
/article/<group>/<subgroup>/<subsubgroup>/<article_name>.md
```

## Standard Execution Steps
1. **Directory Verification**: Ensure target path conforms strictly to group/subgroup nesting rules.
2. **Frontmatter Check**: Verify required YAML frontmatter metadata (title, author, updated date, category).
3. **Link & Asset Audit**: Confirm all internal links, embedded media, and cross-references resolve valid files.
4. **MkDocs Build Test**: Verify the article compiles without errors in the Docker MkDocs preview container.
