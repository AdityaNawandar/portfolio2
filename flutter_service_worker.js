'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "8923a8b8fdc05e7369c013fdfbc6276e",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "c1c5f29031926111ab3ccb7c551c88f9",
"/": "c1c5f29031926111ab3ccb7c551c88f9",
"main.dart.js": "603c7f26b311732909a2b7fbf5bc2218",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"assets/AssetManifest.json": "aa616f4bdbdaf6f108f0fba90095db10",
"assets/NOTICES": "ea694af760662f3d5b6fe2bda2bf26e2",
"assets/FontManifest.json": "67db266c861f0544e5c57d194651f713",
"assets/AssetManifest.bin.json": "9fac27beeabe5f8ce3d8c4088a41e59b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "1a4c260b67d0f8ffa126668bc79a28a3",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/images/animated_auth_screens/ALS_ss.gif": "a7eaa0cb3b6dddb530000570ce8b685b",
"assets/assets/images/animated_auth_screens/AAS_ss.gif": "6cbaa58b11229cf3562fdce1e4cd8027",
"assets/assets/images/3d_demo/3D_ss1.gif": "f62b4282d157a3b6b1a2ef700f3339df",
"assets/assets/images/tech_logos/javascript.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/images/tech_logos/firebase.svg": "e49de29322e84ba9bef16c93af22891d",
"assets/assets/images/tech_logos/flutter.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/images/tech_logos/git.svg": "fef8e95112e6ab6f2169430ee510db5e",
"assets/assets/images/tech_logos/dotnetcore.svg": "dc7ae52d5edfce84dd8fa8a1b0c4c2e2",
"assets/assets/images/tech_logos/dart.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/images/tech_logos/azure.svg": "16860f998b6b9984ec9bf1cfebcf7b5b",
"assets/assets/images/tech_logos/dotnet.svg": "58deed9741cac2864f91cece1e128f6a",
"assets/assets/images/tech_logos/csharp.svg": "ec7be0a3500b106a4e451fd951e1c717",
"assets/assets/images/tech_logos/sqlserver.svg": "931b1890693f8599d4d4a624e3e65b6a",
"assets/assets/images/workout_tracker/workout_tracker_png.png": "eba8e1b48c4cebe89368467f533bd8a4",
"assets/assets/images/workout_tracker/SWT_ss1.png": "9d09453045c1e1dcbe9b062e8235f313",
"assets/assets/images/workout_tracker/SWT_ss2.png": "b8f12bc87085414cb25c31637bb0b0c6",
"assets/assets/images/google-play-badge.png": "db9b21a1c41f3dcd9731e1e7acfdbb57",
"assets/assets/images/profile_pic.jpg": "a5fbe92654239127f9743fdcbc29a509",
"assets/assets/images/sound_recorder/SR_ss2.png": "1b486aaaf184a9188acd573ae3ab18cf",
"assets/assets/images/sound_recorder/SR_ss1.gif": "e5c8e81f47bcfd1a1a8243f6cdd89452",
"assets/assets/images/eComm/eC_ss2.png": "2116742fc52ef89287b5791fdb02f887",
"assets/assets/images/eComm/eC_ss1.png": "833084a525f2962a1c3961c926e8cbb4",
"assets/assets/images/choose_your_own_adventure/cyoa_ss1.png": "5e203f26de115890dc6b1b8d18abb776",
"assets/assets/images/choose_your_own_adventure/cyoa_ss2.png": "be44998ac7b41b2ea5f270fead3de0e5",
"assets/assets/images/food_nutrition/FN_ss2.png": "2495c61c6133ddb20e141067b9d1eff4",
"assets/assets/images/food_nutrition/FN_ss1.png": "316f97b4e45d5a65995ae6c3a24577d1",
"assets/assets/images/food_nutrition/FN_ss.png": "f17c2619d907c56eade09049d9cddc1f",
"assets/assets/images/apple-app-store-badge.svg": "2928664fe1fc6aca88583a6f606d60ba",
"assets/assets/files/aditya_nawandar.pdf": "e28c7c7b456887b9b91cad53cffdb6fe",
"assets/assets/fonts/Signika/static/Signika-Regular.ttf": "6b4a6aa2375cc611fa8c37cb1e64e577",
"assets/assets/fonts/Signika/static/Signika-SemiBold.ttf": "c0db830557ea613810fe7ffcd2b5ad5e",
"assets/assets/fonts/Signika/static/Signika-Bold.ttf": "d0394c2e86a76cdb1a024ba7af264de6",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
