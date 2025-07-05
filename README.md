# UQ Honours thesis template in Typst
This is a template for Honours theses at the University of Queensland in Typst. It's meant to be as visually
similar as possible to the LaTeX template provided by UQ.

Typst is a new typesetting language with many improvements in speed and ease of use over LaTeX. You can read
more [here](https://typst.app/).

**Requires Typst >= 0.13**

> [!NOTE]
> The template has been specifically tailored for UQ's Electrical Engineering & Computer Science
> (EECS) faculty, but may also be useful in other faculties - especially those which are closely related (e.g.
> SMP). If you're using this template outside of EECS, please be aware that **each faculty has slightly different
> requirements**, and it's **your responsibility** to check them carefully before using this template.

## Compatibility
I used this template to submit my BCompSc(Hons) thesis [TaMaRa](https://github.com/mattyoung101/tamara), which
received a high distinction and no comments on the template itself. I would say that this template is safe to
use for EECS in particular. As mentioned above, for other faculties, you will need to check yourself.

## Instructions
- Edit your details in `config.yaml`
- In the `pages` directory, update the relevant details in `abstract.typ`, `acknowledgements.typ`, and
`dedication.typ`
    - Everything else is auto-generated based on the contents of `config.yaml`
- In the `pages/chapters` directory, write your thesis!
    - If you add a new chapter, make sure it's listed in `uqthesis.typ`
- In the `pages/appendices` directory, add any appendices you may have
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

This is a multi-file project. To use this with Neovim using the [Tinymist
LSP](https://github.com/Myriad-Dreamin/tinymist), you will need to follow my instructions on [this GitHub
issue](https://github.com/Myriad-Dreamin/tinymist/issues/321). In VSCode, you should be able to use "Tinymist:
Pin Main" on the `uqthesis.typ` file.

## Licence
The template Typst code is available under the ISC licence (see LICENSE.txt), in addition to the following
relevant note from the original LaTeX template:

> The Template contains content that is the intellectual property of The University of Queensland, including
> copyright and protected marks, which must be respected in accordance with applicable laws.

This refers to the UQ logo, which is property of the University of Queensland.

The original LaTeX thesis was GNU GPL 2.0, however, I don't believe this template is a derivative work,
because I designed it from scratch and it bares no code similarity to the LaTeX template - only visual
similarity, which I believe is not protected under the GPL.

Despite this, if anyone from UQ disagrees with my reasoning, please contact me: <m.young2@student.uq.edu.au>

If you make any improvements to this template, contributions back to this repo are highly appreciated, though
not required.
