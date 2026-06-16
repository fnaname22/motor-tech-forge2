-- Seed products into the public.products table
INSERT INTO public.products (
  name, description, short_description, price, promotional_price, 
  category, subcategory, subcategory_name, sku, stock_quantity, brand, 
  images, weight_kg, width_cm, height_cm, length_cm, best_seller, active
) VALUES 
('Grade Dianteiras Cromada Esportiva', 
 'Grade dianteira em ABS cromado de alta resistência, fácil instalação, acabamento espelhado e visual agressivo para o seu veículo.', 
 'Grade dianteira cromada estilo esportivo, alta durabilidade.', 
 459.90, 599.90, 'acessorios', 'grades', 'Grades', 'GRD-1001', 10, 'MotorTech', 
 ARRAY['/seed/grade.jpg'], 0.500, 20, 15, 25, true, true),

('Ponteira de Escapamento Inox 63mm', 
 'Ponteira de escapamento em aço inoxidável 304, acabamento polido espelhado, fixação por parafuso. Compatível com escapamentos de 38 a 57mm.', 
 'Ponteira polida em aço inox, som esportivo e visual premium.', 
 189.90, NULL, 'acessorios', 'ponteiras', 'Ponteiras', 'PNT-2210', 15, 'RaceLine', 
 ARRAY['/seed/ponteira.jpg'], 0.800, 12, 12, 30, true, true),

('Moldura de Farol Black Piano', 
 'Par de molduras decorativas em ABS pintura black piano, fixação por adesivo automotivo de alta aderência.', 
 'Moldura decorativa preta brilhante para faróis.', 
 129.90, NULL, 'acessorios', 'molduras', 'Molduras', 'MLD-3105', 20, 'MotorTech', 
 ARRAY['/seed/moldura.jpg'], 0.300, 15, 10, 20, false, true),

('Farol Full LED Projetor 90W', 
 'Farol completo full LED com tecnologia projetor, lente vidro temperado, drive integrado e DRL diurno em formato exclusivo.', 
 'Farol LED com projetor, iluminação branca 6000K.', 
 899.90, 1099.90, 'iluminacao', 'farois', 'Faróis', 'FAR-4501', 5, 'LumenPro', 
 ARRAY['/seed/farol.jpg'], 1.200, 30, 25, 35, true, true),

('Lanterna Traseira LED Sequencial', 
 'Par de lanternas traseiras com tecnologia LED, setas sequenciais (efeito dinâmico) e função freio + posição integrada.', 
 'Lanterna LED com setas sequenciais estilo dinâmico.', 
 749.90, NULL, 'iluminacao', 'lanternas', 'Lanternas', 'LNT-5210', 8, 'LumenPro', 
 ARRAY['/seed/lanterna.jpg'], 1.500, 40, 20, 25, true, true),

('Lente de Farol Auxiliar Neblina Amarela', 
 'Par de lentes em policarbonato amarelo para faróis auxiliares de neblina. Melhora a visibilidade em condições adversas e visual esportivo.', 
 'Lente amarela para farol de neblina, melhora visibilidade.', 
 89.90, NULL, 'iluminacao', 'lentes', 'Lentes', 'LNS-6090', 30, 'RaceLine', 
 ARRAY['/seed/lente.jpg'], 0.200, 10, 5, 10, false, true),

('Grade Frontal Honeycomb Black', 
 'Grade frontal padrão honeycomb em ABS preto fosco, visual esportivo e ventilação otimizada.', 
 'Grade colmeia preta agressiva, estilo racing.', 
 389.90, NULL, 'acessorios', 'grades', 'Grades', 'GRD-1102', 12, 'RaceLine', 
 ARRAY['/seed/grade.jpg'], 0.500, 20, 15, 25, false, true),

('Farol Angel Eyes Bi-LED', 
 'Farol completo com angel eyes integrado, projetor Bi-LED de alta performance e DRL com função seta.', 
 'Farol com olho de anjo e tecnologia Bi-LED.', 
 1299.90, NULL, 'iluminacao', 'farois', 'Faróis', 'FAR-4710', 4, 'MotorTech', 
 ARRAY['/seed/farol.jpg'], 1.300, 30, 25, 35, false, true)
ON CONFLICT (sku) DO NOTHING;
