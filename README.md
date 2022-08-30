# Seedlet.md

A collection of resources (typeface, specification, etc.) for Seedlet.md Markdown.

---

The following README sections specify and implement tasks made available as CLI commands (using [`mask`][1]). The commands may be executed as `dev <task>` (e.g., `dev setup`). Tip: try `dev --help`.

## setup

> Initializes/updates the project (e.g, installs dependencies).

```bash
source ${PROJECT}/lib/support.sh

pushd ${PROJECT} > /dev/null
  echo::info "Project setup..."
  exec::step "brew bundle"
popd > /dev/null
```

## serve

### www

> Runs a local web server to demo the project components.

```bash
source ${PROJECT}/lib/support.sh

pushd ${PROJECT}/var/www > /dev/null
  echo::info "Starting web server (\`<ctrl>-c\` to stop)..."
  exec::step "serve"
popd > /dev/null
```

---

[1]: https://github.com/jacobdeichert/mask
