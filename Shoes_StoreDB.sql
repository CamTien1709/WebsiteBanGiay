PGDMP  ,                	    |            Shoes_StoreDB    16.4    16.4 `    Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            \           1262    17841    Shoes_StoreDB    DATABASE     �   CREATE DATABASE "Shoes_StoreDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Shoes_StoreDB";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            ]           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    17908    accounts    TABLE     �   CREATE TABLE public.accounts (
    accountid integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    customerid integer,
    roleid integer NOT NULL
);
    DROP TABLE public.accounts;
       public         heap    postgres    false    4            �            1259    17907    accounts_accountid_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accountid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.accounts_accountid_seq;
       public          postgres    false    228    4            ^           0    0    accounts_accountid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.accounts_accountid_seq OWNED BY public.accounts.accountid;
          public          postgres    false    227            �            1259    17927    cart    TABLE     �   CREATE TABLE public.cart (
    cartid integer NOT NULL,
    accountid integer,
    shoeid integer,
    quantity integer NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false    4            �            1259    17926    cart_cartid_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cartid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cart_cartid_seq;
       public          postgres    false    230    4            _           0    0    cart_cartid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cart_cartid_seq OWNED BY public.cart.cartid;
          public          postgres    false    229            �            1259    17843 
   categories    TABLE     v   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    17842    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public          postgres    false    216    4            `           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public          postgres    false    215            �            1259    17859    colors    TABLE     c   CREATE TABLE public.colors (
    colorid integer NOT NULL,
    colorname character varying(255)
);
    DROP TABLE public.colors;
       public         heap    postgres    false    4            �            1259    17858    colors_colorid_seq    SEQUENCE     �   CREATE SEQUENCE public.colors_colorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.colors_colorid_seq;
       public          postgres    false    220    4            a           0    0    colors_colorid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.colors_colorid_seq OWNED BY public.colors.colorid;
          public          postgres    false    219            �            1259    17890 	   customers    TABLE     �   CREATE TABLE public.customers (
    customerid integer NOT NULL,
    fullname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phonenumber character varying(255),
    address character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false    4            �            1259    17889    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public          postgres    false    224    4            b           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public          postgres    false    223            �            1259    17850    manufacturers    TABLE     �   CREATE TABLE public.manufacturers (
    manufacturerid integer NOT NULL,
    manufacturername character varying(255) NOT NULL,
    contactinfo character varying(255)
);
 !   DROP TABLE public.manufacturers;
       public         heap    postgres    false    4            �            1259    17849     manufacturers_manufacturerid_seq    SEQUENCE     �   CREATE SEQUENCE public.manufacturers_manufacturerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.manufacturers_manufacturerid_seq;
       public          postgres    false    4    218            c           0    0     manufacturers_manufacturerid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.manufacturers_manufacturerid_seq OWNED BY public.manufacturers.manufacturerid;
          public          postgres    false    217            �            1259    17968    orderdetails    TABLE     �   CREATE TABLE public.orderdetails (
    orderdetailid integer NOT NULL,
    orderid integer,
    shoeid integer,
    quantity integer NOT NULL,
    price double precision NOT NULL
);
     DROP TABLE public.orderdetails;
       public         heap    postgres    false    4            �            1259    17967    orderdetails_orderdetailid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderdetails_orderdetailid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.orderdetails_orderdetailid_seq;
       public          postgres    false    236    4            d           0    0    orderdetails_orderdetailid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.orderdetails_orderdetailid_seq OWNED BY public.orderdetails.orderdetailid;
          public          postgres    false    235            �            1259    17951    orders    TABLE     �   CREATE TABLE public.orders (
    orderid integer NOT NULL,
    accountid integer,
    orderdate timestamp without time zone NOT NULL,
    totalamount double precision NOT NULL,
    statusid integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    17950    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public          postgres    false    4    234            e           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public          postgres    false    233            �            1259    17901    roles    TABLE     `   CREATE TABLE public.roles (
    roleid integer NOT NULL,
    rolename character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false    4            �            1259    17900    roles_roleid_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_roleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_roleid_seq;
       public          postgres    false    4    226            f           0    0    roles_roleid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_roleid_seq OWNED BY public.roles.roleid;
          public          postgres    false    225            �            1259    17866    shoes    TABLE     1  CREATE TABLE public.shoes (
    shoeid integer NOT NULL,
    name character varying(255) NOT NULL,
    categoryid integer,
    manufacturerid integer,
    price double precision NOT NULL,
    stockquantity integer NOT NULL,
    description character varying(255),
    size integer,
    colorid integer
);
    DROP TABLE public.shoes;
       public         heap    postgres    false    4            �            1259    17865    shoes_shoeid_seq    SEQUENCE     �   CREATE SEQUENCE public.shoes_shoeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.shoes_shoeid_seq;
       public          postgres    false    222    4            g           0    0    shoes_shoeid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.shoes_shoeid_seq OWNED BY public.shoes.shoeid;
          public          postgres    false    221            �            1259    17944    status    TABLE     e   CREATE TABLE public.status (
    statusid integer NOT NULL,
    statusname character varying(255)
);
    DROP TABLE public.status;
       public         heap    postgres    false    4            �            1259    17943    status_statusid_seq    SEQUENCE     �   CREATE SEQUENCE public.status_statusid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.status_statusid_seq;
       public          postgres    false    232    4            h           0    0    status_statusid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.status_statusid_seq OWNED BY public.status.statusid;
          public          postgres    false    231            �           2604    17911    accounts accountid    DEFAULT     x   ALTER TABLE ONLY public.accounts ALTER COLUMN accountid SET DEFAULT nextval('public.accounts_accountid_seq'::regclass);
 A   ALTER TABLE public.accounts ALTER COLUMN accountid DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    17930    cart cartid    DEFAULT     j   ALTER TABLE ONLY public.cart ALTER COLUMN cartid SET DEFAULT nextval('public.cart_cartid_seq'::regclass);
 :   ALTER TABLE public.cart ALTER COLUMN cartid DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    17846    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17862    colors colorid    DEFAULT     p   ALTER TABLE ONLY public.colors ALTER COLUMN colorid SET DEFAULT nextval('public.colors_colorid_seq'::regclass);
 =   ALTER TABLE public.colors ALTER COLUMN colorid DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    17893    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    17853    manufacturers manufacturerid    DEFAULT     �   ALTER TABLE ONLY public.manufacturers ALTER COLUMN manufacturerid SET DEFAULT nextval('public.manufacturers_manufacturerid_seq'::regclass);
 K   ALTER TABLE public.manufacturers ALTER COLUMN manufacturerid DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    17971    orderdetails orderdetailid    DEFAULT     �   ALTER TABLE ONLY public.orderdetails ALTER COLUMN orderdetailid SET DEFAULT nextval('public.orderdetails_orderdetailid_seq'::regclass);
 I   ALTER TABLE public.orderdetails ALTER COLUMN orderdetailid DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    17954    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    17904    roles roleid    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN roleid SET DEFAULT nextval('public.roles_roleid_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN roleid DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    17869    shoes shoeid    DEFAULT     l   ALTER TABLE ONLY public.shoes ALTER COLUMN shoeid SET DEFAULT nextval('public.shoes_shoeid_seq'::regclass);
 ;   ALTER TABLE public.shoes ALTER COLUMN shoeid DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    17947    status statusid    DEFAULT     r   ALTER TABLE ONLY public.status ALTER COLUMN statusid SET DEFAULT nextval('public.status_statusid_seq'::regclass);
 >   ALTER TABLE public.status ALTER COLUMN statusid DROP DEFAULT;
       public          postgres    false    232    231    232            N          0    17908    accounts 
   TABLE DATA           U   COPY public.accounts (accountid, username, password, customerid, roleid) FROM stdin;
    public          postgres    false    228   tn       P          0    17927    cart 
   TABLE DATA           C   COPY public.cart (cartid, accountid, shoeid, quantity) FROM stdin;
    public          postgres    false    230   �n       B          0    17843 
   categories 
   TABLE DATA           >   COPY public.categories (categoryid, categoryname) FROM stdin;
    public          postgres    false    216   �n       F          0    17859    colors 
   TABLE DATA           4   COPY public.colors (colorid, colorname) FROM stdin;
    public          postgres    false    220   6o       J          0    17890 	   customers 
   TABLE DATA           V   COPY public.customers (customerid, fullname, email, phonenumber, address) FROM stdin;
    public          postgres    false    224   �o       D          0    17850    manufacturers 
   TABLE DATA           V   COPY public.manufacturers (manufacturerid, manufacturername, contactinfo) FROM stdin;
    public          postgres    false    218   Kp       V          0    17968    orderdetails 
   TABLE DATA           W   COPY public.orderdetails (orderdetailid, orderid, shoeid, quantity, price) FROM stdin;
    public          postgres    false    236   �p       T          0    17951    orders 
   TABLE DATA           V   COPY public.orders (orderid, accountid, orderdate, totalamount, statusid) FROM stdin;
    public          postgres    false    234   7q       L          0    17901    roles 
   TABLE DATA           1   COPY public.roles (roleid, rolename) FROM stdin;
    public          postgres    false    226   �q       H          0    17866    shoes 
   TABLE DATA           {   COPY public.shoes (shoeid, name, categoryid, manufacturerid, price, stockquantity, description, size, colorid) FROM stdin;
    public          postgres    false    222   �q       R          0    17944    status 
   TABLE DATA           6   COPY public.status (statusid, statusname) FROM stdin;
    public          postgres    false    232   �r       i           0    0    accounts_accountid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.accounts_accountid_seq', 10, true);
          public          postgres    false    227            j           0    0    cart_cartid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cart_cartid_seq', 1, false);
          public          postgres    false    229            k           0    0    categories_categoryid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categories_categoryid_seq', 6, true);
          public          postgres    false    215            l           0    0    colors_colorid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.colors_colorid_seq', 7, true);
          public          postgres    false    219            m           0    0    customers_customerid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.customers_customerid_seq', 5, true);
          public          postgres    false    223            n           0    0     manufacturers_manufacturerid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.manufacturers_manufacturerid_seq', 7, true);
          public          postgres    false    217            o           0    0    orderdetails_orderdetailid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.orderdetails_orderdetailid_seq', 6, true);
          public          postgres    false    235            p           0    0    orders_orderid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.orders_orderid_seq', 4, true);
          public          postgres    false    233            q           0    0    roles_roleid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roles_roleid_seq', 4, true);
          public          postgres    false    225            r           0    0    shoes_shoeid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.shoes_shoeid_seq', 8, true);
          public          postgres    false    221            s           0    0    status_statusid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.status_statusid_seq', 6, true);
          public          postgres    false    231            �           2606    17913    accounts accounts_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (accountid);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            postgres    false    228            �           2606    17985    accounts accounts_username_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_username_key UNIQUE (username);
 H   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_username_key;
       public            postgres    false    228            �           2606    17932    cart cart_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cartid);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    230            �           2606    17848    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    216            �           2606    17864    colors colors_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (colorid);
 <   ALTER TABLE ONLY public.colors DROP CONSTRAINT colors_pkey;
       public            postgres    false    220            �           2606    17899    customers customers_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_email_key;
       public            postgres    false    224            �           2606    17897    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    224            �           2606    17857     manufacturers manufacturers_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (manufacturerid);
 J   ALTER TABLE ONLY public.manufacturers DROP CONSTRAINT manufacturers_pkey;
       public            postgres    false    218            �           2606    17973    orderdetails orderdetails_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (orderdetailid);
 H   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_pkey;
       public            postgres    false    236            �           2606    17956    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    234            �           2606    17906    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (roleid);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    226            �           2606    17873    shoes shoes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_pkey PRIMARY KEY (shoeid);
 :   ALTER TABLE ONLY public.shoes DROP CONSTRAINT shoes_pkey;
       public            postgres    false    222            �           2606    17949    status status_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (statusid);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    232            �           2606    17921 !   accounts accounts_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 K   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_customerid_fkey;
       public          postgres    false    4760    228    224            �           2606    17916    accounts accounts_roleid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_roleid_fkey FOREIGN KEY (roleid) REFERENCES public.roles(roleid);
 G   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_roleid_fkey;
       public          postgres    false    226    228    4762            �           2606    17933    cart cart_accountid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_accountid_fkey FOREIGN KEY (accountid) REFERENCES public.accounts(accountid);
 B   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_accountid_fkey;
       public          postgres    false    4764    230    228            �           2606    17938    cart cart_shoeid_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_shoeid_fkey FOREIGN KEY (shoeid) REFERENCES public.shoes(shoeid);
 ?   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_shoeid_fkey;
       public          postgres    false    222    230    4756            �           2606    17974 &   orderdetails orderdetails_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 P   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_orderid_fkey;
       public          postgres    false    4772    236    234            �           2606    17979 %   orderdetails orderdetails_shoeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_shoeid_fkey FOREIGN KEY (shoeid) REFERENCES public.shoes(shoeid);
 O   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_shoeid_fkey;
       public          postgres    false    4756    222    236            �           2606    17962    orders orders_accountid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_accountid_fkey FOREIGN KEY (accountid) REFERENCES public.accounts(accountid);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_accountid_fkey;
       public          postgres    false    4764    228    234            �           2606    17957    orders orders_statusid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_statusid_fkey FOREIGN KEY (statusid) REFERENCES public.status(statusid);
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_statusid_fkey;
       public          postgres    false    234    4770    232            �           2606    17879    shoes shoes_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid);
 E   ALTER TABLE ONLY public.shoes DROP CONSTRAINT shoes_categoryid_fkey;
       public          postgres    false    4750    216    222            �           2606    17874    shoes shoes_colorid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_colorid_fkey FOREIGN KEY (colorid) REFERENCES public.colors(colorid);
 B   ALTER TABLE ONLY public.shoes DROP CONSTRAINT shoes_colorid_fkey;
       public          postgres    false    222    220    4754            �           2606    17884    shoes shoes_manufacturerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_manufacturerid_fkey FOREIGN KEY (manufacturerid) REFERENCES public.manufacturers(manufacturerid);
 I   ALTER TABLE ONLY public.shoes DROP CONSTRAINT shoes_manufacturerid_fkey;
       public          postgres    false    4752    218    222            N   9   x�3�LL����442615�4�4�2�,-N-��qqs�d���"D�b���� ō�      P      x������ � �      B   L   x�3�t�<��R�$���f ���eJ>�%/]�����\�P��c�eS����~xs	�)T )�$�+F��� ��#g      F   G   x�3�<2!5�ˈ3����y�\�@�����L8#�2R�m8�(l
��^��|xQ%�g�ᵹ\1z\\\ ���      J   �   x�3�<2����
�w��U�<�*��91�$35�����!=713G/9?����������Č3��ʼ���t.#ΐ�����)�d<�ݭ�ę�Z��[��
�dianfjbld�����p�d��k|3�2��9}�R;Ҝ��̙�����������������
�.F��� >D?e      D   �   x�3����N�t�M�̱RH��+IL.q���%��rq:�d�$�+H���s��&�+( ���M8��0����Ҧ�A��I���
���`%�·��+�T*���p��d�����V�*�x�yp�d�e8�V$��ݬ��mabihhddllb����� _�M�      V   .   x�3�4�@#�2�A���7�|K�ʵ�pMQ�1z\\\ ���      T   =   x�u���0��=���P)����o�}��pŐ��]�yOU�^���ȿ��R�$b�<      L       x�3�tL����2�t.-.��M-����� Um      H   3  x����N�0F�맸O��8:VH ��V�E���#b`�PE+^ �.�ш��`7-Cʊ-y��=�g���2�)6��w�����U�g����"�O�~V(�*�1�����h #�f�%j�_�?TCQ�qQe"��m����eb>�y_K�I��Y)l��7��I�"Ér�B
�C�&^��ƣTԵ��!�^�(�eR8�4K��8�9"�����p�̽96�~=Z��|��V�.����8[���mg~ !��s��\Nq`�/ƙ��8W��Ep`|��~�o4���� !������j�����1      R   J   x�3�<2!1/]����
9��r/VH�L�W�8� /��"��p��J.S����d�������)p��qqq �?T     