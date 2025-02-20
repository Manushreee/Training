movies = []
theaters = set()
ticket_pricing = (100, 150, 200)  # Fixed ticket prices
customers = {}

def add_movie(title, genre, showtime):
    movie = {"title": title, "genre": genre, "showtime": showtime}
    movies.append(movie)
    print(f"Added movie: {title}")

def remove_movie(title):
    global movies
    movies = [movie for movie in movies if movie["title"] != title]
    print(f"Removed movie: {title}")

def add_theater(theater):
    theaters.add(theater)
    print(f"Added theater: {theater}")

def add_customer(name):
    if name not in customers:
        customers[name] = []
        print(f"Added customer: {name}")
    else:
        print(f"Customer {name} already exists")
        
def book_movie(name, title):
    if name in customers:
        for movie in movies:
            if movie["title"] == title:
                customers[name].append(title)
                print(f"{name} booked movie: {title}")
                return
        print(f"Movie {title} not found")
    else:
        print(f"Customer {name} not found")

def print_details():
    print("\nMovies:")
    for movie in movies:
        print(movie)
    print("\nTheaters:")
    for theater in theaters:
        print(theater)
    print("\nTicket Pricing:")
    print(ticket_pricing)
    print("\nCustomer Bookings:")
    for customer, booked_movies in customers.items():
        print(f"{customer}: {booked_movies}")

add_movie("Inception", "Sci-Fi", "7:00 PM")
add_movie("Titanic", "Romance", "5:00 PM")
remove_movie("Titanic")
add_theater("PVR")
add_theater("INOX")
add_customer("Alice")
add_customer("Bob")
book_movie("Alice", "Inception")
book_movie("Bob", "Inception")
print_details()
