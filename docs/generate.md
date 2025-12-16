---
allowed-tools: Read, Write, Edit, Glob, Grep
description: Generate or update documentation from code
argument-hint: <file-or-module>
---

## Generate Documentation: $ARGUMENTS

### Analysis

1. **Identify documentation type needed**
   - API reference (functions, classes, methods)
   - README / Getting started
   - Architecture / Design docs
   - Inline code comments

2. **Extract information**
   - Public interfaces
   - Function signatures and types
   - Existing docstrings/comments
   - Usage patterns from tests

### Documentation Standards

#### Function/Method Docs
```python
def function_name(param1: Type, param2: Type) -> ReturnType:
    """Short description of what function does.

    Args:
        param1: Description of param1
        param2: Description of param2

    Returns:
        Description of return value

    Raises:
        ErrorType: When this error occurs

    Example:
        >>> function_name("foo", 42)
        "result"
    """
```

#### Class Docs
```python
class ClassName:
    """Short description of class purpose.

    This class provides [functionality] for [use case].

    Attributes:
        attr1: Description
        attr2: Description

    Example:
        >>> obj = ClassName(config)
        >>> obj.method()
    """
```

#### Module Docs
```python
"""Module name - Brief description.

This module provides [what it does].

Typical usage:
    from module import Thing
    thing = Thing()
    thing.do_stuff()

See Also:
    related_module: For related functionality
"""
```

### Output

Generate documentation that is:
- **Accurate**: Matches actual code behavior
- **Complete**: Covers public API
- **Concise**: No unnecessary verbosity
- **Useful**: Includes examples where helpful

Place in appropriate location:
- Inline docstrings for code
- `docs/` folder for standalone docs
- README.md for project overview
