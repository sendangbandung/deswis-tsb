// @ts-check
import { defineConfig, passthroughImageService } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

import cloudflare from '@astrojs/cloudflare';

import preact from '@astrojs/preact';

import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://sendangbandung.com',
  vite: {
      plugins: [tailwindcss()],
      build: {
        rollupOptions: {
          external: ['sharp']
        }
      }
	},

  adapter: cloudflare(),
  integrations: [preact(), sitemap()],
  image: {
    service: passthroughImageService()
  }
});