<nav class='nav-links'>
  <a href='/' class='nav-link'>Home</a>
  <a href='/about' class='nav-link'>About</a>
  <a
    href='https://www.amazon.es/dp/0812982401'
    target='_blank'
    class='nav-link'>Buy the book</a
  >
</nav>

<style>
  .nav-links {
    display: flex;
    justify-content: center;
    gap: 1.5rem;
  }

  .nav-link {
    font-family: var(--font-quote);
    font-size: 1rem;
    color: var(--text);
    text-decoration: none;
    transition: color 0.3s ease;
  }

  .nav-link:hover {
    color: var(--accent);
  }
</style>