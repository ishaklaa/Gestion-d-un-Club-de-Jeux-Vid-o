
use club_de_jeux_vidéo;
--drop table memberes

create TABLE membres (
    id int primary key AUTO_INCREMENT,
    nom varchar(30),
    pseudo varchar(30),
    date_ad date
);

create TABLE tournois (
    id int primary key AUTO_INCREMENT,
    jeu_id int,
    nom varchar(30),
    date_deb date,
    recompenses VARCHAR(30),
    Foreign Key (jeu_id) REFERENCES jeux_video (id)
);

-- drop table participations


create TABLE participations (
    id int primary key AUTO_INCREMENT,
    membre_id int,
    tournoi_id INT,
    classement int,
    score int,
    Foreign Key (membre_id) REFERENCES membres (id),
    Foreign Key (tournoi_id) REFERENCES tournois (id)
);
-- drop table emprunts


create TABLE emprunts (
    id int primary key AUTO_INCREMENT,
    membre_id int,
    jeu_id int,
    date_emp date,
    date_ret date,
    Foreign Key (membre_id) REFERENCES membres (id),
    Foreign Key (jeu_id) REFERENCES jeux_video (id)
);

create TABLE jeux_video (
    id int primary key AUTO_INCREMENT,
    titre VARCHAR(30),
    studio_dev VARCHAR(30),
    genre VARCHAR(30),
    date_sortie VARCHAR(30)
);
-- drop table abonnements


create TABLE abonnements (
    id int primary key AUTO_INCREMENT,
    membre_id int,
    type ENUM(
        'mensuelle',
        'annuelle',
        'semerstruelle'
    ) NOT NULL,
    date_deb DATE,
    Foreign Key (membre_id) REFERENCES membres (id)
);

INSERT INTO
    membres (nom, pseudo, date_ad)
VALUES ('ishak', 'zips', '2025-03-22'),
    ('adam', 'Gina', '2025-02-10'),
    ('smail', 'ego', '2024-04-11')

;

INSERT INTO
    tournois (
        
        nom,
        date_deb,
        recompenses
    )
VALUES (
        
        'madrid masters',
        '2025-06-10',
        '1000'
    ),
    (
        
        'fortnite woldcup',
        '2025-06-15',
        '10000'
    ),
    (
        
        'RL worldcup',
        '2025-06-20',
        '1500'
    );


SELECT * from participations


INSERT INTO
    participations (
        membre_id,
        tournoi_id,
        classement,
        score
    )
VALUES (1, 1, '#3', '560'),
    (2, 2, '#1', '900'),
    (3, 3, '#2', '760');

INSERT INTO
    emprunts (
        membre_id,
        jeu_id,
        date_emp,
        date_ret
    )
VALUES (
        1,
        1,
        '2025-02-17',
        '2025-03-17'
    ),
    (
        2,
        2,
        '2025-04-19',
        '2025-05-15'
    ),
    (
        3,
        3,
        '2025-07-09',
        '2025-10-17'
    );

INSERT INTO
    jeux_video (
        titre,
        studio_dev,
        genre,
        date_sortie
    )
VALUES (
        'valorant',
        'riot games',
        'fps',
        '2020-01-01'
    ),
    (
        'Rocket league',
        'epic games',
        'sport',
        '2018-01-01'
    ),
    (
        'fortnite',
        'epic games',
        'fps',
        '2018-01-01'
    );

INSERT into
    abonnements (membre_id, type, date_deb)
VALUES (
        
        1,
        'mensuelle',
        '2025-11-01'
    ),
    (
        
        2,
        'annuelle',
        '2025-08-09'
    ),
    (
        
        3,
        'annuelle',
        '2025-12-02'
    );

    SELECT * FROM membres;
    SELECT titre ,studio_dev ,genre FROM jeux_video;

    SELECT * FROM tournois WHERE nom like 'madrid masters';


