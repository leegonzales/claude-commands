---
allowed-tools: Read, Edit, Glob, Grep, Bash
description: Intelligent code refactoring with safety checks
argument-hint: <file-or-function>
---

## Refactor Target: $ARGUMENTS

### Pre-flight Checks

1. **Ensure tests exist and pass**
   - Run existing test suite
   - If no tests, suggest adding them first

2. **Create checkpoint**
   - `git stash push -m "pre-refactor: $ARGUMENTS"`
   - `git stash apply`

### Analysis

1. **Identify code smells**
   - Long methods/functions (>20 lines)
   - Deep nesting (>3 levels)
   - Duplicate code
   - Magic numbers/strings
   - God classes/modules
   - Feature envy
   - Primitive obsession

2. **Complexity metrics**
   - Cyclomatic complexity
   - Coupling between modules
   - Lines of code

### Refactoring Techniques

Apply as appropriate:
- **Extract Method/Function** - Break up large functions
- **Extract Variable** - Name complex expressions
- **Inline** - Remove unnecessary indirection
- **Rename** - Improve clarity
- **Move** - Better organize responsibilities
- **Replace Conditional with Polymorphism**
- **Introduce Parameter Object**
- **Remove Dead Code**

### Post-Refactor

1. **Run all tests** - Must still pass
2. **Review changes** - Ensure behavior preserved
3. **Commit** - Small, atomic commits per refactoring

**Rule:** If tests fail after refactoring, you changed behavior, not just structure.
