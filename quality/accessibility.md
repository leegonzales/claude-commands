---
allowed-tools: Read, Grep, Glob
description: WCAG accessibility compliance audit
argument-hint: [component-or-file]
---

## Accessibility Audit: $ARGUMENTS

### WCAG 2.1 Checklist

#### Perceivable

**1.1 Text Alternatives**
- [ ] Images have `alt` attributes
- [ ] Decorative images have `alt=""`
- [ ] Complex images have detailed descriptions
- [ ] Icons have accessible labels

**1.2 Time-based Media**
- [ ] Videos have captions
- [ ] Audio has transcripts
- [ ] No auto-playing media

**1.3 Adaptable**
- [ ] Semantic HTML used (`<nav>`, `<main>`, `<article>`)
- [ ] Headings in logical order (h1 → h2 → h3)
- [ ] Form inputs have labels
- [ ] Tables have headers

**1.4 Distinguishable**
- [ ] Color contrast ratio ≥ 4.5:1 (text)
- [ ] Color not sole means of conveying info
- [ ] Text resizable to 200%
- [ ] No horizontal scrolling at 320px

#### Operable

**2.1 Keyboard Accessible**
- [ ] All interactive elements focusable
- [ ] Focus order logical
- [ ] No keyboard traps
- [ ] Skip links present

**2.2 Enough Time**
- [ ] Session timeouts adjustable
- [ ] Auto-updating content pausable

**2.3 Seizures**
- [ ] No flashing content >3 times/second

**2.4 Navigable**
- [ ] Page titles descriptive
- [ ] Focus visible
- [ ] Link text meaningful (not "click here")
- [ ] Multiple navigation methods

#### Understandable

**3.1 Readable**
- [ ] Language declared (`lang` attribute)
- [ ] Abbreviations explained

**3.2 Predictable**
- [ ] Consistent navigation
- [ ] Consistent identification

**3.3 Input Assistance**
- [ ] Error identification clear
- [ ] Labels/instructions provided
- [ ] Error suggestions helpful

#### Robust

**4.1 Compatible**
- [ ] Valid HTML
- [ ] ARIA used correctly
- [ ] Custom components have roles

### Code Patterns to Check

```
# Missing alt text
<img(?![^>]*alt=)

# Empty links
<a[^>]*>\s*</a>

# Missing form labels
<input(?![^>]*aria-label)(?![^>]*id=["'][^"']*["'][^>]*>.*<label[^>]*for=)

# Click handlers without keyboard
onClick(?!.*onKeyDown|onKeyPress|onKeyUp)
```

### Output

```markdown
## Accessibility Audit Results

### Critical (A)
- [Issue]: [Location] - [How to fix]

### Serious (AA)
- [Issue]: [Location] - [How to fix]

### Moderate (AAA)
- [Issue]: [Location] - [How to fix]

### Passed Checks
- [List of passing criteria]
```
