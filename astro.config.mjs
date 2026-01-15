import { defineConfig } from 'astro/config'
import sitemap from '@astrojs/sitemap'

import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  site: 'https://fabianmorag.com',
  integrations: [sitemap()],
  vite: {
    plugins: [tailwindcss()]
  },
  image: {
    service: passthroughImageService()
  }
})
