import type { APIRoute } from 'astro'

const getRobotsTxt = (sitemapURL: URL) => `\
User-agent: *

Allow: /
Disallow: /*.pdf$

Sitemap: ${sitemapURL.href}
`

export const GET: APIRoute = ({ site }) => {
  const sitemapURL = new URL('sitemap-index.xml', site)
  const headers = {
    'Content-Type': 'text/plain; charset=utf-8'
  }
  return new Response(getRobotsTxt(sitemapURL), { headers })
}
