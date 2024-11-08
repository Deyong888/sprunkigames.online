import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import icon from "astro-icon";

// https://astro.build/config
export default defineConfig({
  site: "https://sprunkigames.online",
  integrations: [tailwind(), mdx(), sitemap(), icon()],

  i18n: {
    defaultLocale: "en",
    locales: ["zh", "en", "es"],
    routing: {
      prefixDefaultLocale: false
    }
  }
  
});
