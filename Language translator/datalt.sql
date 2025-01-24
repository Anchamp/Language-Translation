use Anish
SELECT 
  (select lte.translation_text
   from language_translation_entry AS lte 
   JOIN languages AS l on l.id = lte.language_id
   WHERE lte.translation_id = cc.name_translation_id 
         and l.language_code = "en"
  ) as name,
  (select lte.translation_text
   from language_translation_entry AS lte 
   JOIN languages AS l on l.id = lte.language_id
   WHERE lte.translation_id = cc.description_translation_id 
         and l.language_code = "en"
  ) as description
from catalog_category AS cc