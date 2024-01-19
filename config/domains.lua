return {
  -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
  ssh_domains = {},

  -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
  unix_domains = {},

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  wsl_domains = {
    {
      name = 'WSL:Ubuntu',
      distribution = 'Ubuntu-20.04',
      username = 'waves',
      default_cwd = '/home/waves',
      default_prog = { 'zsh' },
    },
  },
}
