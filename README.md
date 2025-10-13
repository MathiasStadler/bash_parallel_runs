# Run scripts part parallel [![alt text][1]](https://unix.stackexchange.com/questions/103920/parallelize-a-bash-for-loop)
<!-- keep the format - ktf -->
## Set script name
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
script_name="script.sh"
echo "$script_name"
```
<!-- ktf -->

## Sample task - caret script and add function task
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
cat >"$script_name"<<'EOF'
#!/usr/bin/env bash
task(){
   sleep 0.5; echo "$1";
}
EOF
```
<!-- ktf -->
## make th script executable
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
chmod +x "$script_name"
```
<!-- ktf -->
## run the script - sequential
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
cat >>"$script_name"<<'EOF'

for thing in a b c  ; do 
   task "$thing"
done
EOF
```
<!-- ktf -->
## run the script - parallel
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
cat >>"$script_name"<<'EOF'

for thing in a b c  ; do 
   task "$thing" &
done
EOF
```
<!-- ktf -->
## Run the script
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->
./"$script_name"
```
<!-- keep the format - ktf -->
## dummy code block
<!-- ktf -->
```bash <!-- markdownlint-disable-line code-block-style -->

```
<!-- keep the format - ktf -->
For further steps, see Project path [![alt text][1]](project_path.md)
<!-- make folder and download the link sign vai curl -->
<!-- mkdir -p img && curl --create-dirs --output-dir img -O  "https://raw.githubusercontent.com/MathiasStadler/link_symbol_svg/refs/heads/main/link_symbol.svg"-->
<!-- Link sign - Don't Found a better way :-( - You know a better method? - **send me a email** -->
[1]: ./img/link_symbol.svg
<!-- keep the format -->