---
allowed-tools: Read, Write, Glob, Grep
description: Generate detailed specification before implementation
argument-hint: <feature-name>
---

## Specification: $ARGUMENTS

### 1. Overview

**Feature Name:** $ARGUMENTS
**Author:** [Auto-detect from git config]
**Date:** [Current date]
**Status:** Draft

### 2. Problem Statement

- What problem does this solve?
- Who experiences this problem?
- What's the impact of not solving it?

### 3. Goals & Non-Goals

**Goals:**
- [ ] Primary goal 1
- [ ] Primary goal 2

**Non-Goals:**
- Explicitly out of scope items
- Future considerations

### 4. Proposed Solution

**High-Level Design:**
- Architecture overview
- Key components
- Data flow

**Technical Approach:**
- Implementation strategy
- Technologies/patterns to use
- Integration points

### 5. API Design (if applicable)

```typescript
// Interface definitions
interface FeatureInput {
  // ...
}

interface FeatureOutput {
  // ...
}

// Function signatures
function featureName(input: FeatureInput): Promise<FeatureOutput>
```

### 6. Data Model (if applicable)

```sql
-- Schema changes
CREATE TABLE feature_table (
  id UUID PRIMARY KEY,
  -- ...
);
```

### 7. User Experience

- User flow description
- UI mockup references
- Error states and messages

### 8. Testing Strategy

- Unit test approach
- Integration test scenarios
- Edge cases to cover

### 9. Rollout Plan

- Feature flag strategy
- Migration steps
- Rollback plan

### 10. Open Questions

- [ ] Question 1
- [ ] Question 2

### 11. Alternatives Considered

| Option | Pros | Cons | Decision |
|--------|------|------|----------|
| Option A | ... | ... | Chosen/Rejected |
| Option B | ... | ... | Chosen/Rejected |

---

### Output

Write spec to: `docs/specs/[feature-name].md`

Get stakeholder review before implementation.
