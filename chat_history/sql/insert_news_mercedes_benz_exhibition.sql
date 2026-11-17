-- ==============================================================================
-- SQL INSERT: Thêm bài viết mới vào mục "News & Events" (nid_cat_news = 1)
-- Tiêu đề: FIELD TRIP | MERCEDES-BENZ EXHIBITION
-- ==============================================================================

-- 1. Đảm bảo bảng maa_tnews hỗ trợ ký tự UTF-8 4-byte (Emoji cờ 🇩🇪🇻🇳, icon 🎯)
ALTER TABLE `maa_tnews` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. Thêm bài viết mới vào danh mục News & Events
INSERT INTO `maa_tnews` (
  `nid_section_news`,
  `nid_cat_news`,
  `ccode`,
  `ctitle`,
  `cauthor`,
  `ctag`,
  `nhit`,
  `nimg`,
  `alwcmt`,
  `cshort_content`,
  `ccontent`,
  `cimage_height`,
  `cimage_thumb`,
  `cimage_fb`,
  `cimage_iphone`,
  `nspecial`,
  `nhome`,
  `nstatus`,
  `cindex`,
  `niduser01`,
  `niduser02`,
  `ddate01`,
  `ddate02`,
  `ckeword_tag`,
  `cdescription_tag`,
  `eng_ctitle`,
  `eng_cshort_content`,
  `eng_ccontent`,
  `clink`,
  `chome`,
  `cnote`,
  `cdate`,
  `ctime`
) VALUES (
  6,
  1,
  'field-trip-mercedes-benz-exhibition',
  '🇩🇪🇻🇳 FIELD TRIP | MERCEDES-BENZ EXHIBITION 🇻🇳🇩🇪',
  '',
  'Field Trip, Mercedes-Benz, Exhibition, Portfolio Development, MAA',
  0,
  '0',
  '0',
  '<p><strong>PORTFOLIO DEVELOPMENT PROGRAM – LEARNING BEYOND THE CLASSROOM</strong></p>\r\n<p>Learning design goes beyond drawing—it begins with observing and understanding the world around us. During our field trip to the Mercedes-Benz Exhibition, students from the Portfolio Development Program at Magic Arts &amp; Architecture Haus (MAA) had the opportunity to explore real-world applications of design thinking across four creative disciplines.</p>',
  '<article class="post-content news-detail">\r\n    <div class="news-header" style="margin-bottom: 25px; text-align: center;">\r\n        <h2 style="font-size: 24px; font-weight: 700; color: #191919; line-height: 1.4; margin-bottom: 8px;">\r\n            🇩🇪🇻🇳 FIELD TRIP | MERCEDES-BENZ EXHIBITION 🇻🇳🇩🇪\r\n        </h2>\r\n        <h4 style="font-size: 16px; font-weight: 600; color: #FFCB00; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 0;">\r\n            PORTFOLIO DEVELOPMENT PROGRAM – LEARNING BEYOND THE CLASSROOM\r\n        </h4>\r\n    </div>\r\n\r\n    <div class="news-poster" style="text-align: center; margin: 25px 0;">\r\n        <img src="/upload/image_article/field_trip_mercedes_benz.jpg" alt="Field Trip Mercedes-Benz Exhibition" style="max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 5px 20px rgba(0,0,0,0.12); margin: 0 auto; display: block;" />\r\n    </div>\r\n\r\n    <div class="news-body" style="font-size: 15px; line-height: 1.85; color: #333;">\r\n        <p style="font-size: 16px; font-style: italic; color: #555; border-left: 4px solid #FFCB00; padding-left: 15px; margin: 20px 0;">\r\n            Learning design goes beyond drawing—it begins with observing and understanding the world around us.\r\n        </p>\r\n\r\n        <p>\r\n            During our field trip to the <strong>Mercedes-Benz Exhibition</strong>, students from the <strong>Portfolio Development Program</strong> at <strong>Magic Arts &amp; Architecture Haus (MAA)</strong> had the opportunity to explore real-world applications of design thinking across four creative disciplines:\r\n        </p>\r\n\r\n        <div class="disciplines-box" style="background: #fafafa; border: 1px solid #eee; border-radius: 8px; padding: 20px 22px; margin: 25px 0;">\r\n            <ul style="list-style: none; padding-left: 0; margin-bottom: 0;">\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Architecture &amp; Interior Design:</strong> \r\n                        Exploring spatial organization, visitor circulation, exhibition structures, and the art of lighting design.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Graphic Design &amp; Visual Communication:</strong> \r\n                        Examining brand identity systems, typography, and visual communication in a real-world environment.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Industrial &amp; Product Design:</strong> \r\n                        Analyzing forms, materials, aesthetics, craftsmanship, and user experience.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 0; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Fashion &amp; Textile Design:</strong> \r\n                        Drawing inspiration from color palettes, material textures, and sophisticated design details.\r\n                    </div>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <p>\r\n            Every real-world learning experience provides an opportunity for students to strengthen their aesthetic awareness, research skills, critical observation, and multidisciplinary design thinking—essential foundations for developing a compelling personal portfolio that demonstrates creative vision, conceptual depth, and practical design skills.\r\n        </p>\r\n\r\n        <p>\r\n            At MAA, we will continue sharing more in-depth insights into each design discipline, helping students gain a clearer understanding of their interests, explore potential career paths, and make informed decisions about their future fields of study.\r\n        </p>\r\n\r\n        <p style="font-weight: 700; color: #1a2954; font-size: 16px; margin-top: 25px; margin-bottom: 10px;">\r\n            Our mission goes beyond helping students create impressive portfolios.\r\n        </p>\r\n\r\n        <p>\r\n            We are committed to empowering young creatives with the knowledge, guidance, and confidence to identify their strengths, choose the right academic pathways, and prepare strategically for their future university applications.\r\n        </p>\r\n\r\n        <p>\r\n            Through meaningful learning experiences and personalized portfolio development, we aim to help every student build a distinctive, thoughtfully curated portfolio that reflects their individuality, creative potential, and aspirations—one that can make a strong impression on their chosen universities.\r\n        </p>\r\n\r\n        <p style="margin-top: 30px; font-weight: 700; color: #FFCB00; font-size: 16px; text-align: right; letter-spacing: 0.5px;">\r\n            MAA | Your Future, Your Imagination\r\n        </p>\r\n    </div>\r\n</article>',
  '',
  'field_trip_mercedes_benz.jpg',
  '',
  '',
  1,
  1,
  1,
  '0.01',
  1,
  1,
  CURDATE(),
  CURDATE(),
  'Field Trip, Mercedes-Benz, MAA, Portfolio Development',
  'Field trip to Mercedes-Benz Exhibition - Portfolio Development Program at MAA',
  '🇩🇪🇻🇳 FIELD TRIP | MERCEDES-BENZ EXHIBITION 🇻🇳🇩🇪',
  '<p><strong>PORTFOLIO DEVELOPMENT PROGRAM – LEARNING BEYOND THE CLASSROOM</strong></p>\r\n<p>Learning design goes beyond drawing—it begins with observing and understanding the world around us. During our field trip to the Mercedes-Benz Exhibition, students from the Portfolio Development Program at Magic Arts &amp; Architecture Haus (MAA) had the opportunity to explore real-world applications of design thinking across four creative disciplines.</p>',
  '<article class="post-content news-detail">\r\n    <div class="news-header" style="margin-bottom: 25px; text-align: center;">\r\n        <h2 style="font-size: 24px; font-weight: 700; color: #191919; line-height: 1.4; margin-bottom: 8px;">\r\n            🇩🇪🇻🇳 FIELD TRIP | MERCEDES-BENZ EXHIBITION 🇻🇳🇩🇪\r\n        </h2>\r\n        <h4 style="font-size: 16px; font-weight: 600; color: #FFCB00; text-transform: uppercase; letter-spacing: 0.5px; margin-bottom: 0;">\r\n            PORTFOLIO DEVELOPMENT PROGRAM – LEARNING BEYOND THE CLASSROOM\r\n        </h4>\r\n    </div>\r\n\r\n    <div class="news-poster" style="text-align: center; margin: 25px 0;">\r\n        <img src="/upload/image_article/field_trip_mercedes_benz.jpg" alt="Field Trip Mercedes-Benz Exhibition" style="max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 5px 20px rgba(0,0,0,0.12); margin: 0 auto; display: block;" />\r\n    </div>\r\n\r\n    <div class="news-body" style="font-size: 15px; line-height: 1.85; color: #333;">\r\n        <p style="font-size: 16px; font-style: italic; color: #555; border-left: 4px solid #FFCB00; padding-left: 15px; margin: 20px 0;">\r\n            Learning design goes beyond drawing—it begins with observing and understanding the world around us.\r\n        </p>\r\n\r\n        <p>\r\n            During our field trip to the <strong>Mercedes-Benz Exhibition</strong>, students from the <strong>Portfolio Development Program</strong> at <strong>Magic Arts &amp; Architecture Haus (MAA)</strong> had the opportunity to explore real-world applications of design thinking across four creative disciplines:\r\n        </p>\r\n\r\n        <div class="disciplines-box" style="background: #fafafa; border: 1px solid #eee; border-radius: 8px; padding: 20px 22px; margin: 25px 0;">\r\n            <ul style="list-style: none; padding-left: 0; margin-bottom: 0;">\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Architecture &amp; Interior Design:</strong> \r\n                        Exploring spatial organization, visitor circulation, exhibition structures, and the art of lighting design.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Graphic Design &amp; Visual Communication:</strong> \r\n                        Examining brand identity systems, typography, and visual communication in a real-world environment.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 14px; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Industrial &amp; Product Design:</strong> \r\n                        Analyzing forms, materials, aesthetics, craftsmanship, and user experience.\r\n                    </div>\r\n                </li>\r\n                <li style="margin-bottom: 0; display: flex; align-items: flex-start;">\r\n                    <span style="font-size: 18px; margin-right: 10px; line-height: 1.4;">🎯</span>\r\n                    <div>\r\n                        <strong style="color: #1a2954;">Fashion &amp; Textile Design:</strong> \r\n                        Drawing inspiration from color palettes, material textures, and sophisticated design details.\r\n                    </div>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <p>\r\n            Every real-world learning experience provides an opportunity for students to strengthen their aesthetic awareness, research skills, critical observation, and multidisciplinary design thinking—essential foundations for developing a compelling personal portfolio that demonstrates creative vision, conceptual depth, and practical design skills.\r\n        </p>\r\n\r\n        <p>\r\n            At MAA, we will continue sharing more in-depth insights into each design discipline, helping students gain a clearer understanding of their interests, explore potential career paths, and make informed decisions about their future fields of study.\r\n        </p>\r\n\r\n        <p style="font-weight: 700; color: #1a2954; font-size: 16px; margin-top: 25px; margin-bottom: 10px;">\r\n            Our mission goes beyond helping students create impressive portfolios.\r\n        </p>\r\n\r\n        <p>\r\n            We are committed to empowering young creatives with the knowledge, guidance, and confidence to identify their strengths, choose the right academic pathways, and prepare strategically for their future university applications.\r\n        </p>\r\n\r\n        <p>\r\n            Through meaningful learning experiences and personalized portfolio development, we aim to help every student build a distinctive, thoughtfully curated portfolio that reflects their individuality, creative potential, and aspirations—one that can make a strong impression on their chosen universities.\r\n        </p>\r\n\r\n        <p style="margin-top: 30px; font-weight: 700; color: #FFCB00; font-size: 16px; text-align: right; letter-spacing: 0.5px;">\r\n            MAA | Your Future, Your Imagination\r\n        </p>\r\n    </div>\r\n</article>',
  NULL,
  '0',
  '',
  '',
  UNIX_TIMESTAMP()
);

