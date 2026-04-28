import { Link, useNavigate } from "react-router-dom";
import { useState } from "react";
import { Search, Home, ArrowLeft } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { categories } from "@/data/catalog";
import { Seo } from "@/components/seo/Seo";

const NotFound = () => {
  const [q, setQ] = useState("");
  const navigate = useNavigate();
  return (
    <>
      <Seo title="Página não encontrada — MotorTech Parts" description="A página que você procura não existe. Volte ao catálogo da MotorTech Parts." />
      <div className="container py-16 max-w-2xl text-center">
        <div className="font-display text-[120px] md:text-[180px] leading-none text-primary tracking-wider">404</div>
        <h1 className="font-display text-2xl md:text-4xl uppercase tracking-wider mt-2">Página não encontrada</h1>
        <p className="text-muted-foreground mt-3">
          A página que você procura saiu de cena... mas não saiu da pista! Use a busca abaixo ou navegue pelas categorias.
        </p>

        <form
          onSubmit={(e) => { e.preventDefault(); if (q.trim()) navigate(`/busca?q=${encodeURIComponent(q.trim())}`); }}
          className="mt-8 flex gap-2 max-w-md mx-auto"
        >
          <Input value={q} onChange={(e) => setQ(e.target.value)} placeholder="Buscar produtos..." />
          <Button type="submit" size="icon" aria-label="Buscar"><Search className="h-4 w-4" /></Button>
        </form>

        <div className="mt-10">
          <p className="text-sm font-bold uppercase tracking-wider mb-3 text-muted-foreground">Categorias populares</p>
          <div className="flex flex-wrap gap-2 justify-center">
            {categories.map((c) => (
              <Link
                key={c.slug}
                to={`/categoria/${c.slug}`}
                className="px-4 py-2 border rounded-full hover:border-primary hover:text-primary transition text-sm font-semibold"
              >
                {c.name}
              </Link>
            ))}
          </div>
        </div>

        <div className="mt-10 flex gap-3 justify-center">
          <Button variant="outline" onClick={() => navigate(-1)}>
            <ArrowLeft className="h-4 w-4 mr-2" /> Voltar
          </Button>
          <Button asChild className="font-bold">
            <Link to="/"><Home className="h-4 w-4 mr-2" /> Voltar para Home</Link>
          </Button>
        </div>
      </div>
    </>
  );
};

export default NotFound;
