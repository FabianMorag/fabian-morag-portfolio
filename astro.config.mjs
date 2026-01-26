import { defineConfig, passthroughImageService } from 'astro/config'
import sitemap from '@astrojs/sitemap'

import tailwindcss from '@tailwindcss/vite'

import react from '@astrojs/react'

export default defineConfig({
  site: 'https://fabianmorag.com',
  integrations: [sitemap(), react()],
  vite: {
    plugins: [tailwindcss()]
  },
  image: {
    service: passthroughImageService()
  }
})
