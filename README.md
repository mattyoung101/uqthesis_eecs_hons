# UQ Honours thesis template in Typst
This is a template for Honours theses at the University of Queensland in Typst. It's based on the LaTeX
template provided by UQ.

Typst is a new typesetting language with many improvements in speed and ease of use over LaTeX. You can read
more [here](https://typst.app/).

> [!CAUTION]
> The template has been specifically tailored for UQ's Electrical Engineering & Computer Science
> (EECS) faculty, but may also be useful in other faculties - especially those which are closely related (e.g.
> SMP). If you're using this template outside of EECS, please be aware that **each faculty has slightly different
> requirements**, and it's **your responsibility** to check them carefully before using this template.

> [!CAUTION]
> Please also note that this template has **not yet been verified as being permissible to submit
> theses in**. Until I do so myself, it will have to be your responsibility to verify this template is suitable
> with your faculty and supervisor.

## Instructions
- Edit your details in `config.yaml`
- In the `pages` directory, update the relevant details in `abstract.typ`, `acknowledgements.typ`, and
`dedication.typ`
    - Everything else is auto-generated based on the contents of `config.yaml`
- In the `chapters` directory, write your thesis!
    - If you add a new chapter, make sure it's listed in `uqthesis.typ`
- In the `appendices` directory, add any appendices you may have
    - If you add a new appendix, make sure it's listed in `uqthesis.typ`

To compile your thesis once off:

```bash
# In the root directory of this project:
typst compile uqthesis.typ
```

While editing, it's very helpful to use Typst's live reload feature:

```bash
# In the root directory of this project:
typst watch uqthesis.typ
```

## Licence
TBA
