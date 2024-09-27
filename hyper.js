module.exports = {
  updateChannel: 'stable',
  config: {
    fontSize: 20,
    windowSize: [1080, 720],
    fontFamily: '"Operator Mono", "Inconsolata for Powerline", monospace',
    cursorShape: 'BLOCK',
    wickedBorder: true,
    padding: '10px',
    colors: {
      black: '#222222',
      red: '#f92a72',
      green: '#a6e22e',
      yellow: '#fd971f',
      blue: '#ae81ff',
      magenta: '#f92a72',
      cyan: '#66d9ef',
      white: '#cfcfc2',
      lightBlack: '#75715e',
      lightRed: '#f92a72',
      lightGreen: '#a6e22e',
      lightYellow: '#e6db74',
      lightBlue: '#ae81ff',
      lightMagenta: '#f92a72',
      lightCyan: '#66d9ef',
      lightWhite: '#f8f8f2',
    },
    shell: '/bin/zsh',
    shellArgs: ['--login'],

    webGLRenderer: true, // Enables WebGL renderer for better performance
    macOptionSelectionMode: 'vertical', // Allows for column selection using Option key
    nativeWindowDecoration: true, // Uses native window decorations (macOS only)
    enableVibrancy: true, // Enables vibrancy effect (macOS only)

    // Cursor configurations
    cursorBlink: true,
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorAccentColor: '#000',

    // Selection configurations
    selectionColor: 'rgba(248,28,229,0.3)',

    // URL configurations
    copyOnSelect: false,
    quickEdit: false,
  },

  plugins: [
    'hyperline',
    'zsh-autosuggestions',
    'verminal',
    'hyper-search',
    'hyper-tab-icons',
    'hyperterm-paste',
    'hyperterm-tabs',
    'hyper-pane',
    // New plugins
    'hyper-snazzy', // A bright theme for Hyper
    'hyper-statusline', // Adds a status line to Hyper
    'hypercwd', // Opens new tabs with the same directory as the current tab
    'hyper-active-tab', // Highlights the active tab
  ],

  // Key mappings
  keymaps: {
    'window:new': 'cmd+n',
    'window:minimize': 'cmd+m',
    'window:zoom': 'cmd+alt+m',
    'window:toggleFullScreen': 'f11',
    'window:close': 'cmd+w',
    'tab:new': 'cmd+t',
    'tab:next': ['cmd+right', 'cmd+shift+]'],
    'tab:prev': ['cmd+left', 'cmd+shift+['],
    'pane:next': 'cmd+]',
    'pane:prev': 'cmd+[',
    'pane:splitVertical': 'cmd+d',
    'pane:splitHorizontal': 'cmd+shift+d',
    'pane:close': 'cmd+w',
  },
};
