import { defineConfig } from 'astro/config'
import tailwind from '@astrojs/tailwind'
import sitemap from '@astrojs/sitemap'

// https://astro.build/config
export default defineConfig({
  site: 'https://fabianmorag.com',
  integrations: [tailwind(), sitemap({
    customPages: ['https://fabianmorag.com/CV-Fabian-Morag.pdf'],
    priority: 1.00,
    serialize (item) {
      if (/CV-Fabian-Morag.pdf/.test(item.url)) {
        item.priority = 0.80
      }
      return item
    }
  }
  )]
})
