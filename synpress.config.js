const { defineConfig } = require('cypress');
const synpressPlugins = require('@synthetixio/synpress/plugins');

module.exports = defineConfig({
  e2e: {
    specPattern: 'tests/e2e/**/*.{js,jsx,ts,tsx}',
    supportFile: 'tests/support/index.js',
    videosFolder: 'tests/videos',
    screenshotsFolder: 'tests/screenshots',
    setupNodeEvents(on, config) {
      return synpressPlugins(on, config);
    },
  },
});