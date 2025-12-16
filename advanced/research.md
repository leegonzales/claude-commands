---
allowed-tools: Read, Glob, Grep, WebSearch, WebFetch, Task
description: Deep parallel research using specialized agents
argument-hint: <query>
---

## Research: $ARGUMENTS

### Research Strategy

1. **Decompose the question**
   - What are the sub-questions?
   - What types of sources are needed?
   - What's the scope (codebase, web, both)?

2. **Parallel investigation**
   Launch specialized searches:
   - Codebase exploration (existing patterns, implementations)
   - Web search (best practices, documentation, solutions)
   - Related issues/PRs (prior art, discussions)

3. **Synthesize findings**
   - Cross-reference sources
   - Identify consensus and conflicts
   - Note gaps in knowledge

### Research Types

**Technical Implementation**
- How is X implemented in this codebase?
- What patterns are used for Y?
- How do other projects solve Z?

**Best Practices**
- What's the recommended approach for X?
- What are common pitfalls?
- What does the documentation say?

**Debugging/Investigation**
- Why is X happening?
- What changed recently?
- Where is Y defined/used?

**Comparison/Evaluation**
- What are the tradeoffs between X and Y?
- Which approach fits our needs?
- What are others using?

### Output Format

```markdown
## Research Results: [Query]

### Summary
[2-3 sentence answer to the main question]

### Findings

#### From Codebase
- [Pattern/implementation found]
- [Location and context]

#### From Documentation/Web
- [Best practice or recommendation]
- [Source with link]

#### From Issues/Discussions
- [Relevant prior discussion]
- [Outcome or decision]

### Recommendations
1. [Primary recommendation with rationale]
2. [Alternative if applicable]

### Sources
- [Link 1]
- [Link 2]
- [File:line references]

### Open Questions
- [What remains unclear]
- [What needs further investigation]
```
