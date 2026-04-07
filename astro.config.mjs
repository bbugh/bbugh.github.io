import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";
import { execSync } from "node:child_process";
import { watch } from "node:fs";

function typstResume() {
  const compile = () => {
    execSync(
      "typst compile --font-path src/pdf/fonts src/pdf/resume.typ public/resume.pdf",
    );
  };

  return {
    name: "typst-resume",
    hooks: {
      "astro:build:start": () => compile(),
      "astro:server:setup": () => {
        compile();
        watch("src/pdf", { recursive: true }, () => compile());
      },
    },
  };
}

// https://astro.build/config
export default defineConfig({
  outDir: "./_site",
  vite: { plugins: [tailwindcss()] },
  site: "https://brianbugh.me",
  integrations: [typstResume()],
});
