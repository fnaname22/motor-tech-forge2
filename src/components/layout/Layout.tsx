import { Outlet } from "react-router-dom";
import { Header } from "./Header";
import { Footer } from "./Footer";
import { MobileBottomBar } from "./MobileBottomBar";
import { BackToTop } from "./BackToTop";
import { CartDrawer } from "@/components/cart/CartDrawer";
import { WhatsAppButton } from "@/components/trust/WhatsAppButton";
import { CookieBanner } from "@/components/trust/CookieBanner";

export const Layout = () => (
  <div className="min-h-screen flex flex-col">
    <Header />
    <main className="flex-1">
      <Outlet />
    </main>
    <Footer />
    <MobileBottomBar />
    <BackToTop />
    <CartDrawer />
    <WhatsAppButton />
    <CookieBanner />
  </div>
);
