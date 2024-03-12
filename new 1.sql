CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    RegistrationDate DATETIME NOT NULL
);
CREATE TABLE Coordinates (
    CoordinateID INT PRIMARY KEY AUTO_INCREMENT,
    XCoordinate INT NOT NULL,
    YCoordinate INT NOT NULL,
    UNIQUE(XCoordinate, YCoordinate)
);
CREATE TABLE Colors (
    ColorID INT PRIMARY KEY AUTO_INCREMENT,
    ColorName VARCHAR(50) NOT NULL,
    HexValue VARCHAR(7) NOT NULL -- Assuming hex representation of colors
);
CREATE TABLE Pixels (
    PixelID INT PRIMARY KEY AUTO_INCREMENT,
    CoordinateID INT,
    UserID INT,
    ColorID INT,
    ClickTimestamp DATETIME NOT NULL,
    FOREIGN KEY (CoordinateID) REFERENCES Coordinates(CoordinateID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ColorID) REFERENCES Colors(ColorID)
);
