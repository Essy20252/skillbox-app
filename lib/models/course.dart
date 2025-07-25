class Course {
  final String title;
  final String description;
  final List<Topic> topics;

  Course({required this.title, required this.description, required this.topics});
}

class Topic {
  final String title;
  final String content;

  Topic({required this.title, required this.content});
}

final List<Course> courses = [
  Course(
    title: 'Digital Marketing',
    description: 'Master SEO, social media, and content strategy.',
    topics: [
      Topic(
        title: 'Introduction to Digital Marketing',
        content: 'Digital marketing is the promotion of products using digital channels...',
      ),
      Topic(
        title: 'SEO Basics',
        content: 'SEO stands for Search Engine Optimization. It improves your site visibility...',
      ),
      Topic(
        title: 'Social Media Marketing',
        content: 'Leverage platforms like Facebook, Instagram, and X to reach your audience...',
      ),
      Topic(
        title: 'Email Marketing',
        content: 'Build relationships and drive conversions through targeted email campaigns...',
      ),
      Topic(
        title: 'Content Marketing Strategy',
        content: 'Plan and deliver content that attracts and retains a clearly defined audience...',
      ),
    ],
  ),
  Course(
    title: 'Graphic Design',
    description: 'Design stunning visuals with tools like Canva and Figma.',
    topics: [
      Topic(
        title: 'Color Theory & Psychology',
        content: 'Color influences perception and emotion—learn how to apply this effectively...',
      ),
      Topic(
        title: 'Typography Principles',
        content: 'Typography is the art of arranging text in an appealing and readable way...',
      ),
      Topic(
        title: 'Creating Logos & Branding',
        content: 'Logos build brand identity. Learn how to create simple, memorable logos...',
      ),
      Topic(
        title: 'Canva Essentials',
        content: 'Canva is a powerful free tool to design posters, presentations, and social media graphics...',
      ),
      Topic(
        title: 'Using Figma for UI Design',
        content: 'Figma allows collaborative interface design and prototyping for web and mobile apps...',
      ),
    ],
  ),
  Course(
    title: 'Financial Literacy',
    description: 'Understand budgeting, saving, investing, and mobile money.',
    topics: [
      Topic(
        title: 'Budgeting Basics',
        content: 'A budget helps you plan how to spend your money wisely and avoid debt...',
      ),
      Topic(
        title: 'Mobile Money & M-Pesa',
        content: 'Learn how to manage, send, and receive money via mobile platforms like M-Pesa...',
      ),
      Topic(
        title: 'Saving Habits',
        content: 'Saving is the foundation of financial stability. Start with small amounts regularly...',
      ),
      Topic(
        title: 'Investment Options in Kenya',
        content: 'Explore SACCOs, government bonds, and unit trusts for long-term growth...',
      ),
      Topic(
        title: 'Avoiding Debt Traps',
        content: 'Understand interest, loan risks, and how to manage borrowing responsibly...',
      ),
    ],
  ),
  Course(
    title: 'Job Readiness Skills',
    description: 'Get job-ready with CV writing, interview skills, and communication.',
    topics: [
      Topic(
        title: 'Writing a Great CV',
        content: 'Your CV is your personal marketing tool—make it clean, clear, and tailored...',
      ),
      Topic(
        title: 'Interview Preparation',
        content: 'Research the company, practice answers, and dress appropriately...',
      ),
      Topic(
        title: 'Soft Skills Employers Want',
        content: 'Teamwork, time management, and adaptability are key to workplace success...',
      ),
      Topic(
        title: 'Online Job Platforms',
        content: 'Learn to search and apply for jobs using platforms like BrighterMonday...',
      ),
      Topic(
        title: 'Email & Phone Etiquette',
        content: 'Professional communication can make or break job opportunities...',
      ),
    ],
  ),
  Course(
    title: 'Entrepreneurship Basics',
    description: 'Turn ideas into business with planning, marketing, and growth.',
    topics: [
      Topic(
        title: 'Identifying a Business Idea',
        content: 'A good business idea solves a problem—start with what you’re passionate about...',
      ),
      Topic(
        title: 'Creating a Business Plan',
        content: 'A business plan outlines your strategy, market, and financial projections...',
      ),
      Topic(
        title: 'Understanding Your Customer',
        content: 'Customer research helps you create better products and services...',
      ),
      Topic(
        title: 'Marketing on a Budget',
        content: 'Use low-cost digital tools and word-of-mouth to promote your brand...',
      ),
      Topic(
        title: 'Managing Money in Business',
        content: 'Track expenses, reinvest profits, and avoid mixing personal and business funds...',
      ),
    ],
  ),
];
