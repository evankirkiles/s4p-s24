import { defineConfig } from "astro/config";

import mdx from "@astrojs/mdx";

// https://astro.build/config
export default defineConfig({
  site: "https://s-for-p.evankirkiles.com",
  devToolbar: {
    enabled: false
  },
  integrations: [mdx()]
});