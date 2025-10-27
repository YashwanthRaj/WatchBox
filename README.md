## 🎬 WatchBox

WatchBox is a modern, feature-rich movie and TV streaming companion app built with SwiftUI and SwiftData. It allows users to explore trending, popular, and top-rated titles from The Movie Database, view detailed information, and watch official trailers via YouTube integration all within a sleek, dynamic interface.

Designed to deliver a complete streaming experience, WatchBox also features a Download Manager that lets users save content for offline viewing, showcasing how to integrate persistent local storage and asynchronous data handling in a real-world iOS project.

### 🚀 Features

- **Dynamic Home Screen**
    
    Browse trending movies, top-rated TV shows, and personalized recommendations in an elegant, scrollable layout powered by SwiftUI.
    
- **Powerful Search Functionality**
    
    Quickly search across TMDB’s vast library of movies and TV series using real-time API integration.
    
- **Detailed Title Screens**
    
    Access rich details such as synopsis, genres, cast, ratings, and release dates. Launch YouTube trailers directly from each title’s detail page.
    
- **YouTube Integration**
    
    Embedded trailer playback using YouTube APIs for an immersive preview experience.
    
- **Offline Downloads**
    
    Save selected titles using SwiftData to access them offline. Includes a built-in **Download Manager** to handle progress, completion, and error states.
    
- **Modern SwiftUI Architecture**
    
    Fully built using SwiftUI, showcasing declarative UI design, MVVM pattern, and async/await-based API calls.
    
- **SwiftData Persistence Layer**
    
    Efficient local storage for downloaded titles and user preferences, replacing Core Data with SwiftData for modern iOS persistence.
    

### 🧩 Tech Stack

- **Language:** Swift
- **Frameworks:** SwiftUI, SwiftData, Combine
- **APIs:** The Movie Database (TMDB), YouTube Data API
- **Architecture:** MVVM (Model-View-ViewModel)
- **Persistence:** SwiftData for offline downloads
- **Networking:** URLSession + async/await
- **Minimum iOS Version:** iOS 17+

### 🖼️ Screens (Planned / Example)

- **Home Screen:** Trending movies & TV shows
- **Search Screen:** Real-time movie/TV search results
- **Details Screen:** Title overview with trailer playback
- **Downloads Screen:** Manage saved titles offline
