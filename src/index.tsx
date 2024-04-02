Bun.serve({
  fetch(req: Request) {
    const url = new URL(req.url);
    if (url.pathname === "/") return new Response(`<h1>Home</h1>`, { headers: { "Content-Type": "text/html" } });
    if (url.pathname === "/about") return new Response(`<h1 color=green>About</h1>`, { headers: { "Content-Type": "text/html" } });
    return new Response(`<h1 color=red>404</h1>`, { headers: { "Content-Type": "text/html" } });
  },
  port: 1337
});