module.exports = {
  updateChannel: "stable",
  config: {
    fontSize: 20,
    windowSize: [1080, 720],
    fontFamily: '"Operator Mono", "Inconsolata for Powerline", monospace',
    cursorShape: "BLOCK", // color of the text
    wickedBorder: true,
    padding: "10px",
    colors: {
      black: "#222222",
      red: "#f92a72",
      green: "#a6e22e",
      yellow: "#fd971f",
      blue: "#ae81ff",
      magenta: "#f92a72",
      cyan: "#66d9ef",
      white: "#cfcfc2",
      lightBlack: "#75715e",
      lightRed: "#f92a72",
      lightGreen: "#a6e22e",
      lightYellow: "#e6db74",
      lightBlue: "#ae81ff",
      lightMagenta: "#f92a72",
      lightCyan: "#66d9ef",
      lightWhite: "#f8f8f2",
    }, // the shell to run when spawning a new session (i.e. /usr/local/bin/fish) // if left empty, your system's login shell will be used by default

    shell: "/bin/zsh", // for setting shell arguments (i.e. for using interactive shellArgs: ['-i']) // by default ['--login'] will be used

    shellArgs: ["--login"], // for environment variables
  },

  plugins: [
    "hyperline",
    "zsh-autosuggestions",
    "verminal",
    "hyper-search",
    "hyper-tab-icons",
    "hyperterm-paste",
    "hyperterm-tabs",
    "hyper-pane",
  ],
};
