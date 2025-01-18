import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import icon from "astro-icon";

// https://astro.build/config
export default defineConfig({
  site: "https://sprunkigames.online",
  integrations: [tailwind(), mdx(), sitemap(), icon({
    include: {
      mdi: ['*']
    }
  })],

  i18n: {
    defaultLocale: "en",
    locales: ["en", "es", "zh", "fil"],
    routing: {
      prefixDefaultLocale: false
    }
  }
  
});
