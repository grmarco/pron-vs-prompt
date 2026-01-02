# pron-vs-prompt

Reproducibility package for the EMNLP 2024 paper **“Pron vs Prompt: Can Large Language Models already Challenge a World-Class Fiction Author at Creative Text Writing?”**

We run a controlled “duel” between **Patricio Pron** and **GPT-4 Turbo (gpt-4-0125-preview)** on a single creative task: writing ~600-word **movie synopses** from **60 titles** (30 proposed by each contender), with outputs in **Spanish** (Pron + GPT-4) and **English** (GPT-4). Texts are evaluated by **literature experts** using a rubric grounded in **Boden’s** creativity dimensions (novelty/surprise/value → *originality* + *attractiveness*), plus additional literary-judgment criteria. 

## What’s inside

- `data/` — titles, synopses, and expert annotations used in the paper. :contentReference[oaicite:2]{index=2}
- `figures/` — plots produced by the analysis notebooks.
- `0_GPT4_prompts.ipynb` — prompts used to generate GPT-4 texts. :contentReference[oaicite:3]{index=3}
- `1_RQ1_plotting_heatmap.ipynb` — RQ1: GPT-4 vs Pron (score distributions / heatmaps).
- `2_RQ2_prompt_importance.ipynb` — RQ2: effect of the *title source* (Pron titles vs GPT-4 titles).
- `3_RQ3_es_vs_en_stats_test.ipynb` — RQ3: GPT-4 English vs Spanish statistical tests.
- `4_RQ4_detecting_style.ipynb` — RQ4: experts’ ability to detect GPT-4 style over time.
- `5_RQ5_creativity_def_lmer.R` — RQ5: mixed-effects models linking creativity to originality/attractiveness.
- `6_RQ5_creativity_def_plotting_correlations.ipynb` — RQ5: correlation plots and visual checks.

## Citation

If you use this repository, please cite:

```bibtex
@inproceedings{marco-etal-2024-pron,
  title     = {Pron vs Prompt: Can Large Language Models already Challenge a World-Class Fiction Author at Creative Text Writing?},
  author    = {Marco, Guillermo and Gonzalo, Julio and Mateo, Teresa and del Castillo, Ramon},
  booktitle = {Proceedings of the 2024 Conference on Empirical Methods in Natural Language Processing},
  year      = {2024},
  month     = nov,
  address   = {Miami, Florida, USA},
  publisher = {Association for Computational Linguistics},
  pages     = {19654--19670}
}
```
