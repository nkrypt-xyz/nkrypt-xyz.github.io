<template>
  <q-page class="landing-page">
    <!-- Hero Section -->
    <section class="hero-section">
      <div class="container">
        <div class="row items-center justify-center q-pa-lg">
          <div class="col-12 col-md-8 text-center">
            <div class="hero-logo q-mb-md">
              <img
                src="/images/image4.png"
                alt="nkrypt.xyz logo"
                class="logo-image"
              />
            </div>
            <h1 class="hero-title q-mb-md" style="margin-bottom: 12px;">
              <span class="gradient-text">nkrypt.xyz</span>
            </h1>
            <p class="hero-subtitle q-mb-lg" style="margin-bottom: 12px;">
              Open-source, end-to-end encrypted, self-hosted data containers
              with programmable APIs for secure data management.
            </p>
            <p class="hero-tagline q-mb-xl" style="margin-bottom: 20px;">
              "Privacy should not be an afterthought. What is meant for your
              eyes and your eyes only, we make sure it stays that way."
            </p>
            <div class="row q-gutter-md justify-center q-mb-xl" style="margin-top: 20px;">
              <q-btn
                unelevated
                color="primary"
                size="lg"
                label="Get Started"
                icon="rocket_launch"
                @click="scrollToSection('get-involved')"
                class="cta-button"
              />
              <q-btn
                outline
                color="primary"
                size="lg"
                label="View on GitHub"
                icon="code"
                href="https://github.com/nkrypt-xyz/"
                target="_blank"
                class="cta-button"
              />
            </div>
            <div class="hero-screenshots q-mt-xl">
              <div class="row q-gutter-sm justify-center no-wrap">
                <div
                  v-for="(img, idx) in heroImages"
                  :key="idx"
                  class="screenshot-preview col-auto"
                >
                  <img :src="img" :alt="`Screenshot ${idx + 1}`" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- USP Section -->
    <section id="features" class="section features-section">
      <div class="container">
        <div class="text-center q-mb-xl">
          <h2 class="section-title q-mb-md">Why nkrypt.xyz?</h2>
          <p class="section-subtitle">
            Enterprise-grade security with developer-friendly architecture
          </p>
        </div>
        <div class="row q-gutter-lg">
          <div
            v-for="(feature, idx) in features"
            :key="idx"
            class="col-12 col-sm-6 col-md-4"
          >
            <q-card class="feature-card" dark flat bordered>
              <q-card-section>
                <div class="feature-icon q-mb-md">
                  <q-icon :name="feature.icon" size="48px" :color="feature.color" />
                </div>
                <h3 class="feature-title q-mb-sm">{{ feature.title }}</h3>
                <p class="feature-description">{{ feature.description }}</p>
              </q-card-section>
            </q-card>
          </div>
        </div>
      </div>
    </section>

    <!-- Screenshots Section -->
    <section id="screenshots" class="section screenshots-section">
      <div class="container">
        <div class="text-center q-mb-xl">
          <h2 class="section-title q-mb-md">See It In Action</h2>
          <p class="section-subtitle">
            Explore the interface and capabilities of our secure container platform
          </p>
        </div>
        <div class="row q-gutter-md justify-center">
          <div
            v-for="(img, idx) in screenshotImages"
            :key="idx"
            class="col-12 col-sm-6 col-md-4 col-lg-3"
          >
            <q-card class="screenshot-card" dark flat>
              <img :src="img" :alt="`Screenshot ${idx + 1}`" class="screenshot-image" />
            </q-card>
          </div>
        </div>
      </div>
    </section>

    <!-- Use Cases Section -->
    <section id="use-cases" class="section use-cases-section">
      <div class="container">
        <div class="text-center q-mb-xl">
          <h2 class="section-title q-mb-md">Use Cases</h2>
          <p class="section-subtitle">
            Secure data management across diverse scenarios
          </p>
        </div>
        <div class="row q-gutter-lg">
          <div
            v-for="(useCase, idx) in useCases"
            :key="idx"
            class="col-12 col-md-6"
          >
            <q-card class="use-case-card" dark flat bordered>
              <q-card-section>
                <div class="row items-center q-mb-md">
                  <q-icon
                    :name="useCase.icon"
                    size="32px"
                    :color="useCase.color"
                    class="q-mr-md"
                  />
                  <h3 class="use-case-title">{{ useCase.title }}</h3>
                </div>
                <p class="use-case-description">{{ useCase.description }}</p>
              </q-card-section>
            </q-card>
          </div>
        </div>
      </div>
    </section>

    <!-- Get Involved Section -->
    <section id="get-involved" class="section get-involved-section">
      <div class="container">
        <div class="text-center q-mb-xl">
          <h2 class="section-title q-mb-md">Join The Community</h2>
          <p class="section-subtitle">
            Help us build the future of secure data storage
          </p>
        </div>
        <div class="row q-gutter-lg">
          <div class="col-12 col-md-6">
            <q-card class="involvement-card" dark flat bordered>
              <q-card-section>
                <q-icon name="bug_report" size="48px" color="warning" class="q-mb-md" />
                <h3 class="q-mb-sm">Beta Testing Program</h3>
                <p>
                  We are looking for the brave of heart to become our front-line in the
                  fight against bugs. No programming experience is needed.
                </p>
              </q-card-section>
            </q-card>
          </div>
          <div class="col-12 col-md-6">
            <q-card class="involvement-card" dark flat bordered>
              <q-card-section>
                <q-icon name="code" size="48px" color="primary" class="q-mb-md" />
                <h3 class="q-mb-sm">Code Contributions</h3>
                <p>
                  Fork the repository and develop features or fixes independently.
                  Submit pull requests for review and integration into the main codebase.
                </p>
              </q-card-section>
            </q-card>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer-section">
      <div class="container">
        <div class="row q-gutter-lg q-mb-xl">
          <div class="col-12 col-md-4">
            <h4 class="footer-title q-mb-md">Links & Resources</h4>
            <ul class="footer-links">
              <li>
                <q-btn
                  flat
                  no-caps
                  color="primary"
                  icon="code"
                  label="GitHub"
                  href="https://github.com/nkrypt-xyz/"
                  target="_blank"
                />
              </li>
              <li>
                <q-btn
                  flat
                  no-caps
                  color="primary"
                  icon="launch"
                  label="MVP Web App"
                  href="https://pwa.mvp.nkrypt.xyz/"
                  target="_blank"
                />
              </li>
            </ul>
          </div>
          <div class="col-12 col-md-4">
            <h4 class="footer-title q-mb-md">Contact</h4>
            <ul class="footer-links">
              <li>
                <q-btn
                  flat
                  no-caps
                  color="primary"
                  icon="email"
                  label="nkrypt.xyz.support@proton.me"
                  href="mailto:nkrypt.xyz.support@proton.me"
                />
              </li>
              <li>
                <q-btn
                  flat
                  no-caps
                  color="primary"
                  icon="person"
                  label="Sayem Shafayet"
                  href="https://sayemshafayet.com"
                  target="_blank"
                />
              </li>
            </ul>
          </div>
          <div class="col-12 col-md-4">
            <h4 class="footer-title q-mb-md">Contributors</h4>
            <ul class="footer-links">
              <li>Sayem Shafayet - Founding Author & Maintainer</li>
              <li>Mysha Azfar - Product Owner</li>
            </ul>
          </div>
        </div>
        <q-separator dark class="q-mb-lg" />
        <div class="text-center">
          <p class="footer-copyright">
            © 2023
            <a href="https://sayemshafayet.com" target="_blank" class="text-primary"
              >Sayem Shafayet</a
            >
          </p>
        </div>
      </div>
    </footer>
  </q-page>
</template>

<script setup lang="ts">
import { ref } from 'vue';

function scrollToSection(sectionId: string) {
  const element = document.getElementById(sectionId);
  if (element) {
    element.scrollIntoView({ behavior: 'smooth', block: 'start' });
  }
}

const heroImages = [
  '/images/image6.png',
  '/images/image9.png',
  '/images/image5.png',
];

const screenshotImages = [
  '/images/image10.png',
  '/images/image2.png',
  '/images/image7.png',
  '/images/image3.png',
  '/images/image8.png',
  '/images/image1.png',
];

const features = [
  {
    icon: 'lock',
    title: 'Genuine End-to-end Encryption',
    description:
      'Client-side encryption ensures your data is secured before transmission. Containers (buckets) use dedicated encryption keys that never leave your device. The server infrastructure operates on encrypted data only, with zero-knowledge architecture.',
    color: 'positive',
  },
  {
    icon: 'share',
    title: 'Granular Access Control',
    description:
      'Share containers with fine-grained permission management. Control read, write, and administrative access at the container and file level. Each user maintains independent encryption keys for shared resources.',
    color: 'primary',
  },
  {
    icon: 'verified',
    title: 'True FOSS, High Auditability',
    description:
      'Licensed under GNU General Public License v3.0. Complete source code transparency with comprehensive auditing documentation. Security researchers and development teams can independently verify the codebase and security architecture.',
    color: 'secondary',
  },
  {
    icon: 'dns',
    title: 'Self-hostable Community Releases',
    description:
      'Deploy on-premises or in your preferred cloud environment. Full control over infrastructure and data sovereignty. Pre-configured Docker images and comprehensive deployment documentation enable rapid setup and integration.',
    color: 'accent',
  },
  {
    icon: 'settings',
    title: 'Programmable API & Extensibility',
    description:
      'RESTful API architecture enables seamless third-party integrations. Comprehensive API documentation supports rapid development. Support for public and encrypted metadata per entity, with file and directory-level locking mechanisms for concurrent multi-tenant access.',
    color: 'info',
  },
];

const useCases = [
  {
    icon: 'home',
    title: 'Personal & Home Use',
    description:
      'Securely store sensitive personal data including security camera footage, personal documents, and private files. Selective sharing capabilities allow you to grant access to specific containers without exposing your entire data repository.',
    color: 'primary',
  },
  {
    icon: 'work',
    title: 'Freelancers & Independent Professionals',
    description:
      'Maintain secure archives of project research, client materials, and proprietary work. End-to-end encryption protects intellectual property while ensuring long-term data preservation and accessibility.',
    color: 'secondary',
  },
  {
    icon: 'groups',
    title: 'Small Teams & Startups',
    description:
      'Collaborative secure storage for sensitive project data and confidential information. Per-user encryption keys enable team members to access shared containers while maintaining individual security boundaries.',
    color: 'accent',
  },
  {
    icon: 'school',
    title: 'Students & Researchers',
    description:
      'Secure storage for academic materials, research data, and coursework. Cross-device synchronization ensures access from any location. Optional time-based expiration policies for temporary data management.',
    color: 'info',
  },
  {
    icon: 'public',
    title: 'Enterprise & Organizations',
    description:
      'Scalable security architecture for organizations requiring data sovereignty and compliance. Customizable deployment options support enterprise security policies and regulatory requirements.',
    color: 'positive',
  },
];
</script>

<style lang="scss" scoped>
.landing-page {
  background: $dark-page;
  color: #e5e7eb;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 24px;
}

// Hero Section
.hero-section {
  min-height: 100vh;
  display: flex;
  align-items: center;
  background: linear-gradient(180deg, $dark-page 0%, $dark 100%);
  padding: 80px 0;
  position: relative;
  overflow: hidden;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: radial-gradient(
      circle at 50% 50%,
      rgba($primary, 0.1) 0%,
      transparent 70%
    );
    pointer-events: none;
  }

  .hero-logo {
    .logo-image {
      width: 64px;
      height: 64px;
      filter: drop-shadow(0 4px 8px rgba($primary, 0.3));
    }
  }

  .hero-title {
    font-size: 4rem;
    font-weight: 700;
    line-height: 1.2;
    margin: 0;

    @media (max-width: 600px) {
      font-size: 2.5rem;
    }
  }

  .hero-subtitle {
    font-size: 1.5rem;
    color: #9ca3af;
    line-height: 1.6;
    max-width: 800px;
    margin: 0 auto;

    @media (max-width: 600px) {
      font-size: 1.125rem;
    }
  }

  .hero-tagline {
    font-size: 1.25rem;
    font-style: italic;
    color: $primary;
    max-width: 700px;
    margin: 0 auto;
    border-left: 3px solid $primary;
    padding-left: 20px;

    @media (max-width: 600px) {
      font-size: 1rem;
      padding-left: 16px;
    }
  }

  .cta-button {
    min-width: 180px;
  }

  .hero-screenshots {
    .row {
      @media (max-width: 1023px) {
        flex-wrap: wrap;
      }
    }

    .screenshot-preview {
      max-width: 200px;
      width: 200px;
      flex-shrink: 0;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.4);
      transition: transform 0.3s ease;

      &:hover {
        transform: translateY(-8px);
      }

      img {
        width: 100%;
        height: auto;
        display: block;
      }

      @media (max-width: 600px) {
        max-width: 150px;
        width: 150px;
      }
    }
  }
}

// Section Styles
.section {
  padding: 80px 0;

  @media (max-width: 600px) {
    padding: 40px 0;
  }
}

.section-title {
  font-size: 2.5rem;
  font-weight: 700;
  margin: 0;
  color: #f9fafb;

  @media (max-width: 600px) {
    font-size: 2rem;
  }
}

.section-subtitle {
  font-size: 1.125rem;
  color: #9ca3af;
  margin: 0;
}

// Features Section
.features-section {
  background: $dark;

  .row > div {
    @media (min-width: 1024px) {
      flex: 0 0 calc(33.333333% - 24px);
      max-width: calc(33.333333% - 24px);
    }
  }
}

.feature-card {
  height: 100%;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;
  backdrop-filter: blur(10px);

  &:hover {
    transform: translateY(-4px);
    border-color: $primary;
    box-shadow: 0 8px 24px rgba($primary, 0.2);
  }

  .feature-icon {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 80px;
    height: 80px;
    border-radius: 16px;
    background: rgba($primary, 0.1);
    margin-bottom: 16px;
  }

  .feature-title {
    font-size: 1.5rem;
    font-weight: 600;
    margin: 0 0 12px 0;
    color: #f9fafb;
  }

  .feature-description {
    font-size: 1rem;
    line-height: 1.6;
    color: #d1d5db;
    margin: 0;
  }
}

// Screenshots Section
.screenshots-section {
  background: $dark-page;
}

.screenshot-card {
  border-radius: 12px;
  overflow: hidden;
  transition: transform 0.3s ease;
  border: 1px solid rgba(255, 255, 255, 0.1);

  &:hover {
    transform: scale(1.05);
    box-shadow: 0 12px 32px rgba($primary, 0.3);
  }

  .screenshot-image {
    width: 100%;
    height: auto;
    display: block;
    object-fit: cover;
  }
}

// Use Cases Section
.use-cases-section {
  background: $dark;

  .row > div {
    @media (min-width: 1024px) {
      flex: 0 0 calc(50% - 24px);
      max-width: calc(50% - 24px);
    }
  }
}

.use-case-card {
  height: 100%;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;

  &:hover {
    transform: translateY(-4px);
    border-color: $secondary;
    box-shadow: 0 8px 24px rgba($secondary, 0.2);
  }

  .use-case-title {
    font-size: 1.25rem;
    font-weight: 600;
    margin: 0;
    color: #f9fafb;
  }

  .use-case-description {
    font-size: 1rem;
    line-height: 1.6;
    color: #d1d5db;
    margin: 0;
  }
}

// Get Involved Section
.get-involved-section {
  background: $dark-page;

  .row > div {
    @media (min-width: 1024px) {
      flex: 0 0 calc(50% - 24px);
      max-width: calc(50% - 24px);
    }
  }
}

.involvement-card {
  height: 100%;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;

  &:hover {
    transform: translateY(-4px);
    border-color: $accent;
    box-shadow: 0 8px 24px rgba($accent, 0.2);
  }

  h3 {
    font-size: 1.5rem;
    font-weight: 600;
    margin: 0 0 12px 0;
    color: #f9fafb;
  }

  p {
    font-size: 1rem;
    line-height: 1.6;
    color: #d1d5db;
    margin: 0;
  }
}

// Footer
.footer-section {
  background: $dark;
  padding: 60px 0 30px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);

  .footer-title {
    font-size: 1.25rem;
    font-weight: 600;
    color: #f9fafb;
    margin: 0 0 16px 0;
  }

  .footer-links {
    list-style: none;
    padding: 0;
    margin: 0;

    li {
      margin-bottom: 8px;
      color: #d1d5db;
    }
  }

  .footer-copyright {
    color: #9ca3af;
    font-size: 0.875rem;
    margin: 0;

    a {
      text-decoration: none;
      transition: color 0.2s ease;

      &:hover {
        color: $primary;
      }
    }
  }
}
</style>
