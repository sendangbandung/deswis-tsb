// @ts-check
import { defineConfig, passthroughImageService } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

import cloudflare from '@astrojs/cloudflare';

import preact from '@astrojs/preact';

// https://astro.build/config
export default defineConfig({
  vite: {
      plugins: [tailwindcss()],
      build: {
        rollupOptions: {
          external: ['sharp']
        }
      }
	},

  adapter: cloudflare(),
  integrations: [preact()],
  image: {
    service: passthroughImageService()
  }
});