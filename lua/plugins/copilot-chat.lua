return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    model = 'claude-3.7-sonnet',
    prompts = {
      MyCommit = {
        prompt = "Generate commit message for all changes 提交信息模板:\n<类型>[(范围)]:<空格><主题,单行>\n<BLANK LINE>\n[描述,多行,可选]\n<BLANK LINE>\n[附录,多行,可选]\n\n类型:\n\nfeat: 引入了新的特性或功能\nfix: 修复了某个bug\nrevert: 回滚某个提交，主题中请明确commit hash\nimprovement: 代码结构改进、性能优化，不涉及新功能或bug修复\ndep: 升级或添加相关依赖\nci: 构建脚本或配置更新\nstyle: 代码风格更新\ntest: 测试代码更新\ndocs: 文档方面更新",
        system_prompt = "You are very good at explaining stuff",
        mapping = "<leader>ccmc",
        description = "My custom prompt description",
      },
    },
  },
}
