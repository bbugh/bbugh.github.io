import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

// https://astro.build/config
export default defineConfig({
  outDir: "./_site",
  vite: { plugins: [tailwindcss()] },
});
