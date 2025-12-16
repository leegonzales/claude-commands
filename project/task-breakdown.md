---
allowed-tools: Read, Glob, Grep
description: Break complex features into manageable implementation tasks
argument-hint: <feature-description>
---

## Feature: $ARGUMENTS

### Analysis

1. **Understand the requirement**
   - What is the end goal?
   - Who is the user?
   - What are the acceptance criteria?

2. **Identify components**
   - Backend changes needed?
   - Frontend changes needed?
   - Database schema changes?
   - API contract changes?
   - Infrastructure/config changes?

3. **Find dependencies**
   - What must be done first?
   - What can be parallelized?
   - External dependencies?

### Task Breakdown

Create tasks that are:
- **Small**: Completable in 1-4 hours
- **Independent**: Minimal dependencies where possible
- **Testable**: Clear done criteria
- **Valuable**: Each delivers incremental value

### Output Format

```markdown
## [Feature Name] - Task Breakdown

### Phase 1: Foundation
- [ ] Task 1.1: [Description] (est: Xh)
      Files: [files to modify]
      Depends on: none
- [ ] Task 1.2: [Description] (est: Xh)
      Files: [files to modify]
      Depends on: 1.1

### Phase 2: Core Implementation
- [ ] Task 2.1: [Description] (est: Xh)
- [ ] Task 2.2: [Description] (est: Xh)

### Phase 3: Integration & Polish
- [ ] Task 3.1: [Description] (est: Xh)
- [ ] Task 3.2: [Description] (est: Xh)

### Risks & Open Questions
- [Risk or question 1]
- [Risk or question 2]
```

### Guidelines

- Prefer vertical slices over horizontal layers
- Include testing in each task, not as separate tasks
- Flag unknowns that need investigation first
