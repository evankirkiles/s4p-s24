// 1. Import utilities from `astro:content`
import { z, defineCollection } from "astro:content";

// 2. Define your collection(s)
const webzineCollection = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    fgColor: z.string().optional(),
    bgColor: z.string().optional(),
  }),
});

// 3. Export a single `collections` object to register your collection(s)
//    This key should match your collection directory name in "src/content"
export const collections = {
  webzine: webzineCollection,
};
