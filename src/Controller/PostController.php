<?php

namespace App\Controller;

use App\Entity\Post;
use App\Entity\User;
use App\Form\PostType;
use App\Repository\PostRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @Route("/post")
 */
class PostController extends AbstractController
{
    /**
     * @Route("/", name="main", methods={"GET"})
     */
    public function index(PostRepository $postRepository): Response
    {
        return $this->render('post/index.html.twig', [
            'posts' => $postRepository->findAll(),
        ]);
    }

    /**
     * @Route("/mypost", name="post_user", methods={"GET"})
     */
    public function mypost(UserInterface $id)
    {
        $userId = $id->getId();
        $repository = $this->getDoctrine()->getRepository(Post::class);
        $post = $repository->findBy(
            ['user' => $userId]
        );
        return $this->render('post/mypost.html.twig', [
            'posts' => $post,
        ]);
    }

    /**
     * @Route("/new", name="post_new", methods={"GET","POST"})
     */
    public function new(Request $request, UserInterface $id): Response
    {
        $post = new Post();
        $form = $this->createForm(PostType::class, $post);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
            $userId = $id->getId();
            $repository = $this->getDoctrine()->getRepository(User::class);
            $user = $repository->findOneBy(['id' => $userId]);
            $post->setUser($user);

    $entityManager = $this->getDoctrine()->getManager();
    $entityManager->persist($post);
    $entityManager->flush();

    return $this->redirectToRoute('main');
    }

    return $this->render('post/new.html.twig', [
    'post' => $post,
    'form' => $form->createView(),
    ]);
    }

    /**
     * @Route("/{id}", name="post_show", methods={"GET"})
     */
    public function show(Post $post): Response
    {
        return $this->render('post/show.html.twig', [
            'post' => $post,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="post_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Post $post, $id, UserInterface $userid): Response
    {
        $userId = $userid->getId();
        $repository = $this->getDoctrine()->getRepository(Post::class);
        $user = $repository->findBy(
            ['user' => $userId,
                'id' => $id]
        );
        if (!$user)
        {
            return $this->redirectToRoute('post_user');
        }
        $form = $this->createForm(PostType::class, $post);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('main', [
                'id' => $post->getId(),
            ]);
        }

        return $this->render('post/edit.html.twig', [
            'post' => $post,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="post_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Post $post, $id, UserInterface $userid): Response
    {
        $userId = $userid->getId();
        $repository = $this->getDoctrine()->getRepository(Post::class);
        $user = $repository->findBy(
            ['user' => $userId,
                'id' => $id]
        );
        if (!$user)
        {
            return $this->redirectToRoute('post_user');
        }
        if ($this->isCsrfTokenValid('delete'.$post->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($post);
            $entityManager->flush();
        }

        return $this->redirectToRoute('post_user');
    }

}
