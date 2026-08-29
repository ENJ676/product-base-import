GRANT SELECT (id, name, slug, logo_url, banner_url, description, active, external_url, link_mode, created_at)
ON public.sellers TO anon, authenticated;

CREATE POLICY "sellers public read safe columns"
ON public.sellers FOR SELECT TO anon, authenticated USING (true);

ALTER VIEW public.sellers_public SET (security_invoker = true);