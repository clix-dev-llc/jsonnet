local html = import 'html.libsonnet';

local renderWithFrontMatter(params, body) =
  '---\n' +
  '# AUTOGENERATED FILE. DO NOT EDIT BY HAND!\n' +
  std.join('\n', [
    std.toString(p) + ': ' + std.toString(params[p])
    for p in std.objectFields(params)
  ]) +
  '\n---\n\n' +
  html.render(body)
;

{
  renderWithFrontMatter: renderWithFrontMatter,
}
