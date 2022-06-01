{:user
 {:signing
  {:gpg-key "F4EA56454DAB2160651DAF56652C55B7AEB9EEF1"}
  :plugins
   [[lein-bikeshed "0.5.2"]
    [lein-ancient "0.6.15"]
    [com.livingsocial/lein-dependency-check "1.1.4"]
    [lein-cljfmt "0.7.0"]
    [venantius/ultra "0.6.0"]]
  :dependencies
  [[jonase/eastwood "0.2.1" :exclusions [org.clojure/clojure]]
   [cljfmt "0.5.1"]
   [borkdude/jet "0.0.6"]
   [alembic "0.3.2"]]
  :aliases
  {"jet" ["run" "-m" "jet.main"]}
  :cljfmt {:remove-multiple-non-indenting-spaces? true
           :split-keypairs-over-multiple-lines? true}}}
