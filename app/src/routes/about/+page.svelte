<main class="container">
  <section class="about-section">
    <div class="about-content">
      <img src="/media/taleb.jpg" alt="Nassim Taleb" class="author-image" />
      <div class="text-container">
        <h2 class="section-title">About the Author</h2>
        <p class="section-content">
          Nassim Nicholas Taleb is a Lebanese-American essayist, scholar, and former risk analyst, best known for his work on probability, uncertainty, and randomness.
          Born in Amioun, Lebanon, on September 12, 1960, Taleb has spent his career exploring the unpredictable elements of life and the limitations of human knowledge.
          He holds an MBA from the Wharton School and a PhD from the University of Paris. Before transitioning to academia, Taleb worked as a derivatives trader and risk analyst.
          He is currently a Distinguished Professor of Risk Engineering at New York University's Tandon School of Engineering.
          <a href="https://engineering.nyu.edu/faculty/nassim-nicholas-taleb" target="_blank" class="source-link">[Source]</a>
        </p>
      </div>
    </div>
  </section>

  <section class="about-section">
    <div class="about-content">
      <img src="/media/cover.jpg" alt="The Bed of Procrustes Book Cover" class="book-image" />
      <div class="text-container">
        <h2 class="section-title">About the Book</h2>
        <p class="section-content">
          <em>The Bed of Procrustes: Philosophical and Practical Aphorisms</em> is a collection of aphorisms by Nassim Nicholas Taleb that delves into the limitations of human knowledge 
          and the inherent uncertainties of life. The title refers to the Greek myth of Procrustes, who forced his guests to fit the length of his bed by either stretching or amputating 
          their limbs, symbolizing the modern tendency to reshape reality to fit our preconceptions. 
          <a href="https://www.amazon.com/Bed-Procrustes-Philosophical-Practical-Aphorisms/dp/0812982401" target="_blank" class="source-link">[Source]</a>
        </p>
      </div>
    </div>
  </section>

  <section class="about-section">
    <div class="about-content">
      <img src="/media/marcel.jpg" alt="Marcel Claramunt" class="developer-image" />
      <div class="text-container">
        <h2 class="section-title">Behind the Site</h2>
        <p class="section-content">
          This website was developed by <strong>Marcel Claramunt</strong>. You may find me deadlifting on <a href="https://www.instagram.com/marcel.claramunt" target="_blank" class="source-link">Instagram</a>.
        </p>
      </div>
    </div>
  </section>
</main>

<style>
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem;
    color: var(--text);
    font-family: var(--font-quote);
    text-align: left;
  }

  .about-section {
    margin-bottom: 3rem;
  }

  .about-content {
    display: flex;
    align-items: center;
    gap: 2rem;
  }

  .author-image, .book-image, .developer-image {
    width: 150px;
    height: auto;
    border-radius: 8px;
  }

  .text-container {
    flex: 1;
  }

  .section-title {
    font-family: var(--font-title);
    font-size: 2rem;
    color: var(--accent);
    margin-bottom: 1rem;
  }

  .section-content {
    font-size: 1.25rem;
    line-height: 1.6;
    color: var(--text);
  }

  .source-link {
    color: var(--accent);
    text-decoration: none;
  }

  .source-link:hover {
    text-decoration: underline;
  }

  @media (max-width: 768px) {
    .about-content {
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .section-title {
      font-size: 1.75rem;
      text-align: center;
    }

    .section-content {
      font-size: 1.1rem;
      text-align: left;
    }

    .author-image, .book-image, .developer-image {
      width: 120px;
    }
  }
</style>
