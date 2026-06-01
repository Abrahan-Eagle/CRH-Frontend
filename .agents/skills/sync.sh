#!/usr/bin/env python3
# CRH Skills Sync Script (JARVIS Powered)

import os
import re

AGENTS_FILE = 'AGENTS.md'
SKILLS_DIR = '.agents/skills'

def extract_yaml(content):
    match = re.search(r'^---\s*\n(.*?)\n---\s*\n', content, re.DOTALL)
    if not match: return None
    import yaml
    try:
        return yaml.safe_load(match.group(1))
    except Exception as e:
        print(f"YAML Parse Error: {e}")
        return None

def sync():
    print("JARVIS Sync: Generando tablas para AGENTS.md...")
    if not os.path.exists(AGENTS_FILE):
        print(f"Error: {AGENTS_FILE} not found.")
        return
    skills = []
    for root, dirs, files in os.walk(SKILLS_DIR):
        if 'SKILL.md' in files:
            path = os.path.join(root, 'SKILL.md')
            with open(path, 'r', encoding='utf-8') as f:
                data = extract_yaml(f.read())
                if data:
                    auto_invoke_raw = data.get('metadata', {}).get('auto_invoke', [])
                    auto_invokes = auto_invoke_raw if isinstance(auto_invoke_raw, list) else ([auto_invoke_raw] if auto_invoke_raw else [])
                    skills.append({
                        'name': data.get('name', 'Unknown'),
                        'desc': data.get('description', '').strip().replace('\n', ' ').split('Trigger:')[0].strip(),
                        'path': os.path.relpath(path, '.').replace('\\', '/'),
                        'auto_invokes': auto_invokes
                    })
    skills.sort(key=lambda x: x['name'])
    skills_md = "| Skill | Descripción | Ruta |\n|-------|-------------|------|\n"
    for s in skills:
        n, d, p = s['name'], s['desc'], s['path']
        if n.startswith('crh-') or n == 'jarvis-core':
            skills_md += f"| **`{n}`** | **{d}** | [{p}]({p}) |\n"
        else:
            skills_md += f"| `{n}` | {d} | [{p}]({p}) |\n"
    auto_entries = sorted((a, s['name']) for s in skills for a in s['auto_invokes'])
    auto_md = "| Acción | Skill |\n|--------|-------|\n" + "".join(f"| {a} | `{sk}` |\n" for a, sk in auto_entries)
    with open(AGENTS_FILE, 'r', encoding='utf-8') as f:
        content = f.read()
    content = re.sub(r'(<!-- SKILLS-START -->\n).*?(\n<!-- SKILLS-END -->)', rf'\g<1>{skills_md.strip()}\g<2>', content, flags=re.DOTALL)
    content = re.sub(r'(<!-- AUTO-INVOKE-START -->\n).*?(\n<!-- AUTO-INVOKE-END -->)', rf'\g<1>{auto_md.strip()}\g<2>', content, flags=re.DOTALL)
    with open(AGENTS_FILE, 'w', encoding='utf-8') as f:
        f.write(content)
    print("JARVIS Sync completado.")

if __name__ == '__main__':
    sync()
