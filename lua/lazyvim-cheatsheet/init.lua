local M = {}

function M.show()
	-- 1. Load cheat sheet data (from a Lua table or file)
	local cheat_sheet_data = {
		"",
		"LazyVim uses which-key.nvim to help you remember your keymaps.",
		"Just press any key like <space> and you'll see a popup with all possible",
		"keymaps starting with <space>.",
		"",
		"default <leader>   is <space>",
		"default <localleader> is \\",
		"",
		"General",
		"",
		"Key                Description",
		"--------------------------------",
		"j                  Down",
		"<Down>             Down",
		"k                  Up",
		"<Up>               Up",
		"<C-h>              Go to Left Window",
		"<C-j>              Go to Lower Window",
		"<C-k>              Go to Upper Window",
		"<C-l>              Go to Right Window",
		"<C-Up>             Increase Window Height",
		"<C-Down>           Decrease Window Height",
		"<C-Left>           Decrease Window Width",
		"<C-Right>          Increase Window Width",
		"<A-j>              Move Down",
		"<A-k>              Move Up",
		"<S-h>              Prev Buffer",
		"<S-l>              Next Buffer",
		"[b                 Prev Buffer",
		"]b                 Next Buffer",
		"<leader>bb         Switch to Other Buffer",
		"<leader>`          Switch to Other Buffer",
		"<leader>bd         Delete Buffer",
		"<leader>bD         Delete Buffer and Window",
		"<esc>              Escape and Clear hlsearch",
		"<leader>ur         Redraw / Clear hlsearch / Diff Update",
		"n                  Next Search Result",
		"N                  Prev Search Result",
		"<C-s>              Save File",
		"<leader>K          Keywordprg",
		"gco                Add Comment Below",
		"gcO                Add Comment Above",
		"<leader>l          Lazy",
		"<leader>fn         New File",
		"<leader>xl         Location List",
		"<leader>xq         Quickfix List",
		"[q                 Previous Quickfix",
		"]q                 Next Quickfix",
		"<leader>cf         Format",
		"<leader>cd         Line Diagnostics",
		"]d                 Next Diagnostic",
		"[d                 Prev Diagnostic",
		"]e                 Next Error",
		"[e                 Prev Error",
		"]w                 Next Warning",
		"[w                 Prev Warning",
		"<leader>uf         Toggle Auto Format (Global)",
		"<leader>uF         Toggle Auto Format (Buffer)",
		"<leader>us         Toggle Spelling",
		"<leader>uw         Toggle Wrap",
		"<leader>uL         Toggle Relative Number",
		"<leader>ud         Toggle Diagnostics",
		"<leader>ul         Toggle Line Numbers",
		"<leader>uc         Toggle conceallevel",
		"<leader>uT         Toggle Treesitter Highlight",
		"<leader>ub         Toggle Background",
		"<leader>uh         Toggle Inlay Hints",
		"<leader>gg         Lazygit (Root Dir)",
		"<leader>gG         Lazygit (cwd)",
		"<leader>gb         Git Blame Line",
		"<leader>gB         Git Browse",
		"<leader>gf         Lazygit Current File History",
		"<leader>gl         Lazygit Log",
		"<leader>gL         Lazygit Log (cwd)",
		"<leader>qq         Quit All",
		"<leader>ui         Inspect Pos",
		"<leader>uI         Inspect Tree",
		"<leader>L          LazyVim Changelog",
		"<leader>ft         Terminal (Root Dir)",
		"<leader>fT         Terminal (cwd)",
		"<c-/>              Terminal (Root Dir)",
		"<c-_>              which_key_ignore",
		"<esc><esc>         Enter Normal Mode",
		"<C-/>              Hide Terminal",
		"<leader>w          Windows",
		"<leader>-          Split Window Below",
		"<leader>|          Split Window Right",
		"<leader>wd         Delete Window",
		"<leader>wm         Toggle Maximize",
		"<leader><tab>l     Last Tab",
		"<leader><tab>o     Close Other Tabs",
		"<leader><tab>f     First Tab",
		"<leader><tab><tab> New Tab",
		"<leader><tab>]     Next Tab",
		"<leader><tab>d     Close Tab",
		"<leader><tab>[     Previous Tab",
		"",
		"LSP",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>cl         Lsp Info",
		"gd                 Goto Definition",
		"gr                 References",
		"gI                 Goto Implementation",
		"gy                 Goto T[y]pe Definition",
		"gD                 Goto Declaration",
		"K                  Hover",
		"<c-k>              Signature Help",
		"<leader>ca         Code Action",
		"<leader>cc         Run Codelens",
		"<leader>cC         Refresh & Display Codelens",
		"<leader>cR         Rename File",
		"<leader>cr         Rename",
		"<leader>cA         Source Action",
		"]]                 Next Reference",
		"[[                 Prev Reference",
		"<a-n>              Next Reference",
		"<a-p>              Prev Reference",
		"",
		"bufferline.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>bl         Delete Buffers to the Left",
		"<leader>bo         Delete Other Buffers",
		"<leader>bp         Toggle Pin",
		"<leader>bP         Delete Non-Pinned Buffers",
		"<leader>br         Delete Buffers to the Right",
		"[b                 Prev Buffer",
		"[B                 Move buffer prev",
		"]b                 Next Buffer",
		"]B                 Move buffer next",
		"<S-h>              Prev Buffer",
		"<S-l>              Next Buffer",
		"",
		"conform.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>cF         Format Injected Langs",
		"",
		"flash.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<c-s>              Toggle Flash Search",
		"r                  Remote Flash",
		"R                  Treesitter Search",
		"o, xs              Flash",
		"S                  Flash Treesitter",
		"",
		"grug-far.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>sr         Search and Replace",
		"",
		"mason.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>cm         Mason",
		"",
		"neo-tree.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>be         Buffer Explorer",
		"<leader>e          Explorer NeoTree (Root Dir)",
		"<leader>E          Explorer NeoTree (cwd)",
		"<leader>fe         Explorer NeoTree (Root Dir)",
		"<leader>fE         Explorer NeoTree (cwd)",
		"<leader>ge         Git Explorer",
		"",
		"noice.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<c-b>              Scroll Backward",
		"<c-f>              Scroll Forward",
		"<leader>sn         +noice",
		"<leader>sna        Noice All",
		"<leader>snd        Dismiss All",
		"<leader>snh        Noice History",
		"<leader>snl        Noice Last Message",
		"<leader>snt        Noice Picker (Telescope/FzfLua)",
		"<S-Enter>          Redirect Cmdline",
		"",
		"nvim-notify",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>un         Dismiss All Notifications",
		"",
		"nvim-treesitter",
		"",
		"Key                Description",
		"--------------------------------",
		"<bs>               Decrement Selection",
		"<c-space>          Increment Selection",
		"",
		"persistence.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>qd         Don't Save Current Session",
		"<leader>ql         Restore Last Session",
		"<leader>qs         Restore Session",
		"<leader>qS         Select Session",
		"",
		"telescope.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader><space>               Find Files (Root Dir)",
		"<leader>,          Switch Buffer",
		"<leader>/          Grep (Root Dir)",
		"<leader>:          Command History",
		"<leader>fb         Buffers",
		"<leader>fc         Find Config File",
		"<leader>ff         Find Files (Root Dir)",
		"<leader>fF         Find Files (cwd)",
		"<leader>fg         Find Files (git-files)",
		"<leader>fr         Recent",
		"<leader>fR         Recent (cwd)",
		"<leader>gc         Commits",
		"<leader>gs         Status",
		'<leader>s"         Registers',
		"<leader>sa         Auto Commands",
		"<leader>sb         Buffer",
		"<leader>sc         Command History",
		"<leader>sC         Commands",
		"<leader>sd         Document Diagnostics",
		"<leader>sD         Workspace Diagnostics",
		"<leader>sg         Grep (Root Dir)",
		"<leader>sG         Grep (cwd)",
		"<leader>sh         Help Pages",
		"<leader>sH         Search Highlight Groups",
		"<leader>sj         Jumplist",
		"<leader>sk         Key Maps",
		"<leader>sl         Location List",
		"<leader>sm         Jump to Mark",
		"<leader>sM         Man Pages",
		"<leader>so         Options",
		"<leader>sq         Quickfix List",
		"<leader>sR         Resume",
		"<leader>ss         Goto Symbol",
		"<leader>sS         Goto Symbol (Workspace)",
		"<leader>sw         Word (Root Dir)",
		"<leader>sW         Word (cwd)",
		"<leader>sw         Selection (Root Dir)",
		"<leader>sW         Selection (cwd)",
		"<leader>uC         Colorscheme with Preview",
		"",
		"todo-comments.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>st         Todo",
		"<leader>sT         Todo/Fix/Fixme",
		"<leader>xt         Todo (Trouble)",
		"<leader>xT         Todo/Fix/Fixme (Trouble)",
		"[t                 Previous Todo Comment",
		"]t                 Next Todo Comment",
		"",
		"trouble.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<leader>cs         Symbols (Trouble)",
		"<leader>cS         LSP references/definitions/... (Trouble)",
		"<leader>xl         Location List (Trouble)",
		"<leader>xQ         Quickfix List (Trouble)",
		"<leader>xx         Diagnostics (Trouble)",
		"<leader>xX         Buffer Diagnostics (Trouble)",
		"[q                 Previous Trouble/Quickfix Item",
		"]q                 Next Trouble/Quickfix Item",
		"",
		"which-key.nvim",
		"",
		"Key                Description",
		"--------------------------------",
		"<c-w><space>       Window Hydra Mode (which-key)",
		"<leader>?          Buffer Keymaps (which-key)",
		"",
		"CopilotChat.nvim",
		"Part of lazyvim.plugins.extras.coding.copilot-chat",
		"Key                Description",
		"--------------------------------",
		"<c-s>              Submit Prompt",
		"<leader>a+a        i",
		"<leader>aa         Toggle (CopilotChat)",
		"<leader>ad         Diagnostic Help (CopilotChat)",
		"<leader>ap         Prompt Actions (CopilotChat)",
		"<leader>aq         Quick Chat (CopilotChat)",
		"<leader>ax         Clear (CopilotChat)",
		"",
		"mini.surround",
		"Part of lazyvim.plugins.extras.coding.mini-surround",
		"Key                Description",
		"--------------------------------",
		"gsa                Add Surrounding",
		"gsd                Delete Surrounding",
		"gsf                Find Right Surrounding",
		"gsF                Find Left Surrounding",
		"gsh                Highlight Surrounding",
		"gsn                Update MiniSurround.config.n_lines",
		"gsr                Replace Surrounding",
		"",
		"neogen",
		"Part of lazyvim.plugins.extras.coding.neogen",
		"Key                Description",
		"--------------------------------",
		"<leader>cn         Generate Annotations (Neogen)",
		"",
		"yanky.nvim",
		"Part of lazyvim.plugins.extras.coding.yanky",
		"Key                Description",
		"--------------------------------",
		"<leader>p          Open Yank History",
		"<p                 Put and Indent Left",
		"<P                 Put Before and Indent Left",
		"=p                 Put After Applying a Filter",
		"=P                 Put Before Applying a Filter",
		">p                 Put and Indent Right",
		">P                 Put Before and Indent Right",
		"[p                 Put Indented Before Cursor (Linewise)",
		"[P                 Put Indented Before Cursor (Linewise)",
		"[y                 Cycle Forward Through Yank History",
		"]p                 Put Indented After Cursor (Linewise)",
		"]P                 Put Indented After Cursor (Linewise)",
		"]y                 Cycle Backward Through Yank History",
		"gp                 Put Text After Selection",
		"gP                 Put Text Before Selection",
		"p                  Put Text After Cursor",
		"P                  Put Text Before Cursor",
		"y                  Yank Text",
		"",
		"nvim-dap",
		"Part of lazyvim.plugins.extras.dap.core",
		"Key                Description",
		"--------------------------------",
		"<leader>d+debug    n, v",
		"<leader>da         Run with Args",
		"<leader>db         Toggle Breakpoint",
		"<leader>dB         Breakpoint Condition",
		"<leader>dc         Continue",
		"<leader>dC         Run to Cursor",
		"<leader>dg         Go to Line (No Execute)",
		"<leader>di         Step Into",
		"<leader>dj         Down",
		"<leader>dk         Up",
		"<leader>dl         Run Last",
		"<leader>do         Step Out",
		"<leader>dO         Step Over",
		"<leader>dp         Pause",
		"<leader>dr         Toggle REPL",
		"<leader>ds         Session",
		"<leader>dt         Terminate",
		"<leader>dw         Widgets",
		"",
		"nvim-dap-ui",
		"Part of lazyvim.plugins.extras.dap.core",
		"Key                Description",
		"--------------------------------",
		"<leader>de         Eval",
		"<leader>du         Dap UI",
		"",
		"aerial.nvim",
		"Part of lazyvim.plugins.extras.editor.aerial",
		"Key                Description",
		"--------------------------------",
		"<leader>cs         Aerial (Symbols)",
		"",
		"telescope.nvim",
		"Part of lazyvim.plugins.extras.editor.aerial",
		"Key                Description",
		"--------------------------------",
		"<leader>ss         Goto Symbol (Aerial)",
		"",
		"dial.nvim",
		"Part of lazyvim.plugins.extras.editor.dial",
		"Key                Description",
		"--------------------------------",
		"<C-a>              Increment",
		"<C-x>              Decrement",
		"g<C-a>             Increment",
		"g<C-x>             Decrement",
		"",
		"fzf-lua",
		"Part of lazyvim.plugins.extras.editor.fzf",
		"Key                Description",
		"--------------------------------",
		"<leader><space>    Find Files (Root Dir)",
		"<leader>,          Switch Buffer",
		"<leader>/          Grep (Root Dir)",
		"<leader>:          Command History",
		"<leader>fb         Buffers",
		"<leader>fc         Find Config File",
		"<leader>ff         Find Files (Root Dir)",
		"<leader>fF         Find Files (cwd)",
		"<leader>fg         Find Files (git-files)",
		"<leader>fr         Recent",
		"<leader>fR         Recent (cwd)",
		"<leader>gc         Commits",
		"<leader>gs         Status",
		'<leader>s"         Registers',
		"<leader>sa         Auto Commands",
		"<leader>sb         Buffer",
		"<leader>sc         Command History",
		"<leader>sC         Commands",
		"<leader>sd         Document Diagnostics",
		"<leader>sD         Workspace Diagnostics",
		"<leader>sg         Grep (Root Dir)",
		"<leader>sG         Grep (cwd)",
		"<leader>sh         Help Pages",
		"<leader>sH         Search Highlight Groups",
		"<leader>sj         Jumplist",
		"<leader>sk         Key Maps",
		"<leader>sl         Location List",
		"<leader>sm         Jump to Mark",
		"<leader>sM         Man Pages",
		"<leader>so         Options",
		"<leader>sq         Quickfix List",
		"<leader>sR         Resume",
		"<leader>ss         Goto Symbol",
		"<leader>sS         Goto Symbol (Workspace)",
		"<leader>sw         Word (Root Dir)",
		"<leader>sW         Word (cwd)",
		"<leader>sw         Selection (Root Dir)",
		"<leader>sW         Selection (cwd)",
		"<leader>uC         Colorscheme with Preview",
		"",
		"harpoon",
		"Part of lazyvim.plugins.extras.editor.harpoon2",
		"Key                Description",
		"--------------------------------",
		"<leader>1          Harpoon to File 1",
		"<leader>2          Harpoon to File 2",
		"<leader>3          Harpoon to File 3",
		"<leader>4          Harpoon to File 4",
		"<leader>5          Harpoon to File 5",
		"<leader>h          Harpoon Quick Menu",
		"<leader>H          Harpoon File",
		"",
		"vim-illuminate",
		"Part of lazyvim.plugins.extras.editor.illuminate",
		"Key                Description",
		"--------------------------------",
		"[[                 Prev Reference",
		"]]                 Next Reference",
		"",
		"leap.nvim",
		"Part of lazyvim.plugins.extras.editor.leap",
		"Key                Description",
		"--------------------------------",
		"gs                 Leap from Windows",
		"s                  Leap Forward to",
		"S                  Leap Backward to",
		"",
		"mini.surround",
		"Part of lazyvim.plugins.extras.editor.leap",
		"Key                Description",
		"--------------------------------",
		"gz+                surround",
		"",
		"mini.diff",
		"Part of lazyvim.plugins.extras.editor.mini-diff",
		"Key                Description",
		"--------------------------------",
		"<leader>go         Toggle mini.diff overlay",
		"",
		"mini.files",
		"Part of lazyvim.plugins.extras.editor.mini-files",
		"Key                Description",
		"--------------------------------",
		"<leader>fm         Open mini.files (Directory of Current File)",
		"<leader>fM         Open mini.files (cwd)",
		"",
		"outline.nvim",
		"Part of lazyvim.plugins.extras.editor.outline",
		"Key                Description",
		"--------------------------------",
		"<leader>cs         Toggle Outline",
		"",
		"overseer.nvim",
		"Part of lazyvim.plugins.extras.editor.overseer",
		"Key                Description",
		"--------------------------------",
		"<leader>ob         Task builder",
		"<leader>oc         Clear cache",
		"<leader>oi         Overseer Info",
		"<leader>oo         Run task",
		"<leader>oq         Action recent task",
		"<leader>ot         Task action",
		"<leader>ow         Task list",
		"",
		"refactoring.nvim",
		"Part of lazyvim.plugins.extras.editor.refactoring",
		"Key                Description",
		"--------------------------------",
		"<leader>r+refactor refactor",
		"<leader>rb         Extract Block",
		"<leader>rc         Debug Cleanup",
		"<leader>rf         Extract Block To File",
		"<leader>rf         Extract Function",
		"<leader>rF         Extract Function To File",
		"<leader>ri         Inline Variable",
		"<leader>rp         Debug Print Variable",
		"<leader>rP         Debug Print",
		"<leader>rs         Refactor",
		"<leader>rx         Extract Variable",
		"",
		"nvim-ansible",
		"Part of lazyvim.plugins.extras.lang.ansible",
		"Key                Description",
		"--------------------------------",
		"<leader>ta         Ansible Run Playbook/Role",
		"",
		"markdown-preview.nvim",
		"Part of lazyvim.plugins.extras.lang.markdown",
		"Key                Description",
		"--------------------------------",
		"<leader>cp         Markdown Preview",
		"",
		"nvim-dap-python",
		"Part of lazyvim.plugins.extras.lang.python",
		"Key                Description",
		"--------------------------------",
		"<leader>dPc        Debug Class",
		"<leader>dPt        Debug Method",
		"",
		"venv-selector.nvim",
		"Part of lazyvim.plugins.extras.lang.python",
		"Key                Description",
		"--------------------------------",
		"<leader>cv         Select VirtualEnv",
		"",
		"vim-dadbod-ui",
		"Part of lazyvim.plugins.extras.lang.sql",
		"Key                Description",
		"--------------------------------",
		"<leader>D          Toggle DBUIn",
		"",
		"vimtex",
		"Part of lazyvim.plugins.extras.lang.tex",
		"Key                Description",
		"--------------------------------",
		"<localLeader>l+    vimtext",
		"",
		"neotest",
		"Part of lazyvim.plugins.extras.test.core",
		"Key                Description",
		"--------------------------------",
		"<leader>t+test     test",
		"<leader>tl         Run Last",
		"<leader>to         Show Output",
		"<leader>tO         Toggle Output Panel",
		"<leader>tr         Run Nearest",
		"<leader>ts         Toggle Summary",
		"<leader>tS         Stop",
		"<leader>tt         Run File",
		"<leader>tT         Run All Test Files",
		"<leader>tw         Toggle Watch",
		"",
		"nvim-dap",
		"Part of lazyvim.plugins.extras.test.core",
		"Key                Description",
		"--------------------------------",
		"<leader>td         Debug Nearest",
		"",
		"edgy.nvim",
		"Part of lazyvim.plugins.extras.ui.edgy",
		"Key                Description",
		"--------------------------------",
		"<leader>ue         Edgy Toggle",
		"<leader>uE         Edgy Select Window",
		"",
		"chezmoi.nvim",
		"Part of lazyvim.plugins.extras.util.chezmoi",
		"Key                Description",
		"--------------------------------",
		"<leader>sz         Chezmoi",
		"",
		"mason.nvim",
		"Part of lazyvim.plugins.extras.util.gitui",
		"Key                Description",
		"--------------------------------",
		"<leader>gg         GitUi (Root Dir)",
		"<leader>gG         GitUi (cwd)",
		"",
		"octo.nvim",
		"Part of lazyvim.plugins.extras.util.octo",
		"Key                Description",
		"--------------------------------",
		"<leader>a+         assignee (Octo)",
		"<leader>c+         comment/code (Octo)",
		"<leader>gi         List Issues (Octo)",
		"<leader>gI         Search Issues (Octo)",
		"<leader>gp         List PRs (Octo)",
		"<leader>gP         Search PRs (Octo)",
		"<leader>gr         List Repos (Octo)",
		"<leader>gS         Search (Octo)",
		"<leader>i+         issue (Octo)",
		"<leader>l+         label (Octo)",
		"<leader>p+         pr (Octo)",
		"<leader>r+         react (Octo)",
		"<leader>v+         review (Octo)",
		"",
		"fzf-lua",
		"Part of lazyvim.plugins.extras.util.project",
		"Key                Description",
		"--------------------------------",
		"<leader>fp         Projects",
		"",
		"telescope.nvim",
		"Part of lazyvim.plugins.extras.util.project",
		"Key                Description",
		"--------------------------------",
		"<leader>fp         Projects",
		"",
		"kulala.nvim",
		"Part of lazyvim.plugins.extras.util.rest",
		"Key                Description",
		"--------------------------------",
		"<leader>R+         Rest",
		"<leader>Rn         Jump to next request",
		"<leader>Rp         Jump to previous request",
		"<leader>Rs         Send the request",
		"<leader>Rt         Toggle headers/body",
	}

	-- 2. Create a buffer to display the data
	local buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, cheat_sheet_data)

	-- 3. Set buffer options
	vim.bo[buf].modifiable = false
	vim.bo[buf].buftype = "nofile"
	vim.bo[buf].swapfile = false

	-- 4. Open a floating window
	local width = vim.o.columns
	local height = vim.o.lines
	local win_height = math.ceil(height * 0.8 - 4)
	local win_width = math.ceil(width * 0.8)
	local row = math.ceil((height - win_height) / 2 - 1)
	local col = math.ceil((width - win_width) / 2)

	local opts = {
		style = "minimal",
		relative = "editor",
		width = win_width,
		height = win_height,
		row = row,
		col = col,
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, opts)

	-- 5. Set window options
	vim.wo[win].cursorline = true

	-- 6. Set keymaps for the buffer
	local function close_window()
		vim.api.nvim_win_close(win, true)
	end

	vim.keymap.set("n", "q", close_window, { buffer = buf, nowait = true })
	vim.keymap.set("n", "<Esc>", close_window, { buffer = buf, nowait = true })
end

return M