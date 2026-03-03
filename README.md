# local-llm.nvim

A Neovim plugin for integrating Large Language Models into your editing workflow.

local-llm.nvim is designed as a structured interface between your editor and an LLM provider.  
It focuses on explicit commands, inspectable output, and controlled execution.

---

## What It Is

- A Neovim plugin for interacting with LLMs
- Designed for structured editing workflows
- Local-first (Ollama provider initially)
- Built with explicit control over model interaction

---

## What It Is Not

- Not an autonomous coding agent
- Not background “magic” modifying your files
- Not a hidden context injection system
- Not a replacement for understanding your own code

Everything is explicit. Nothing mutates your files without you invoking it.

---

## Installation (lazy.nvim)

```lua
{
  "jorge-a-martinez-dev/local-llm.nvim",
  config = function()
    require("local_llm").setup({})
  end,
}

```


---

## Requirements

Neovim 0.9+

An LLM provider (Ollama support planned)

---

## Status

Early-stage rebuild.

Core architecture is being reconstructed in clean, reviewable phases.


## Project Intent Files

local-llm.nvim can optionally read project-specific intent files:

.local-llm/charter.md
.local-llm/milestone.md


These are **ignored by default via `.gitignore`** to prevent accidental commits of private prompt content.

Example templates will be provided in an `examples/` directory.  
Copy them into `.local-llm/` inside your project if you want to use this feature.



